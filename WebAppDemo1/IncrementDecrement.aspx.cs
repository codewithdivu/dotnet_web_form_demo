using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppDemo1
{
    public partial class IncrementDecrement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["Counter"] = 0;
                CounterLabel.Text = "0";
            }
        }
        protected void IncrementCounter(object sender, EventArgs e)
        {
            int counter = (int)ViewState["Counter"];
            counter++;
            ViewState["Counter"] = counter;
            CounterLabel.Text = counter.ToString();
        }
        protected void DecrementCounter(object sender, EventArgs e)
        {
            int counter = (int)ViewState["Counter"];
            counter--;
            ViewState["Counter"] = counter;
            CounterLabel.Text = counter.ToString();
        }
    }
}