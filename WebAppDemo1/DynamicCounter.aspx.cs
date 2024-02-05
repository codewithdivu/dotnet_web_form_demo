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

            HtmlGenericControl divFormGroup = new HtmlGenericControl("div");
            divFormGroup.Attributes.Add("class", "form-group");

            Button btnDecrement = new Button();
            btnDecrement.ID = $"Decrement{dynamicId}"; 
            btnDecrement.Text = "-";
            btnDecrement.CssClass = "btn btn-info";
            btnDecrement.Click += DecrementCounter;

            Label lblCounter = new Label();
            lblCounter.ID = $"CounterLabel{dynamicId}"; 
            lblCounter.Text = "0";
            lblCounter.CssClass = "fontSize";

            Button btnIncrement = new Button();
            btnIncrement.ID = $"Increment{dynamicId}"; 
            btnIncrement.Text = "+";
            btnIncrement.CssClass = "btn btn-primary";
            btnIncrement.Click += IncrementCounter;

            divFormGroup.Controls.Add(btnDecrement);
            divFormGroup.Controls.Add(lblCounter);
            divFormGroup.Controls.Add(btnIncrement);

            phControlsContainer.Controls.Add(divFormGroup);
        }
    }
}