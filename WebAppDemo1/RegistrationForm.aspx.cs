using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppDemo1
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RegistrationSubmit(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            string country = ddlCountry.SelectedValue;

            string gender = rblGender.SelectedValue;

            lblMessage.Text = $"Registration successful!<br/>Name: {name}<br/>Email: {email}<br/>Country: {country}<br/>Gender: {gender}";
        }
    }
}