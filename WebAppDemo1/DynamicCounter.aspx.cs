using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebAppDemo1
{
    public partial class DynamicCounter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Application["Counters"] = 1;
            }
        }
        protected void IncrementCounter(object sender, EventArgs e)
        {
            int counter = int.Parse(CounterLabel.Text);
            counter++;
            CounterLabel.Text = counter.ToString();
        }
        protected void DecrementCounter(object sender, EventArgs e)
        {
            int counter = int.Parse(CounterLabel.Text);
            counter--;
            CounterLabel.Text = counter.ToString();
        }
        protected void AddCounter(object sender, EventArgs e)
        {
            int counter = (int)Application["Counters"];
            string dynamicId = counter.ToString();
            Application["Counters"] = counter+1;
            // Create a new form group div
            HtmlGenericControl divFormGroup = new HtmlGenericControl("div");
            divFormGroup.Attributes.Add("class", "form-group");

            // Create the decrement button
            Button btnDecrement = new Button();
            btnDecrement.ID = $"Decrement{dynamicId}"; 
            btnDecrement.Text = "-";
            btnDecrement.CssClass = "btn btn-info";
            btnDecrement.Click += DecrementCounter;

            // Create the label
            Label lblCounter = new Label();
            lblCounter.ID = $"CounterLabel CounterLabel{dynamicId}"; 
            lblCounter.Text = "0"; 

            // Create the increment button
            Button btnIncrement = new Button();
            btnIncrement.ID = $"Increment{dynamicId}"; 
            btnIncrement.Text = "+";
            btnIncrement.CssClass = "btn btn-primary";
            btnIncrement.Click += IncrementCounter;

            // Add controls to the form group div
            divFormGroup.Controls.Add(btnDecrement);
            divFormGroup.Controls.Add(lblCounter);
            divFormGroup.Controls.Add(btnIncrement);

            // Add the form group div to the placeholder
            phControlsContainer.Controls.Add(divFormGroup);
        }
    }
}