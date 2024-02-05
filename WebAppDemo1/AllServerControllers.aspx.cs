using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppDemo1
{
    public partial class AllServerControllers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable table = new DataTable();
            table.Columns.Add("ID");
            table.Columns.Add("Name");
            table.Columns.Add("City");
            table.Rows.Add("1","Divyesh","Madhavpur");
            table.Rows.Add("2", "Parikshit", "Dwarka");
            table.Rows.Add("3", "Jayraj", "Himatanagar");
            table.Rows.Add("4", "Ansh", "Mehasana");
            table.Rows.Add("5", "Priyanshu", "Ahmedabad");
            table.Rows.Add("6", "Arya", "Jamanagar");
            dataGridControl.DataSource = table;
            dataGridControl.DataBind();
        }
        protected void OnInputValueChange(object sender, EventArgs e)
        {
            labelControl.Text = textBoxControl.Text;
        }
        protected void HandleButtonClick(object sender, EventArgs e)
        {
            labelControl.Text = "Clicked by Button";
        }
        protected void HandleDateSelection(object sender, EventArgs e)
        {
            generalLabel.Text = "" + calendarControl.SelectedDate.ToString();
        }
        protected void HandleClickLinkButton(object sender, EventArgs e)
        {
            generalLabel.Text = "Clicked by the LinkButton";
        }
        protected void HandleDownloadFile(object sender, EventArgs e)
        {
            string filePath = "C:\\Users\\BAPS\\Desktop\\VS_Shortcut.txt";
            FileInfo file = new FileInfo(filePath);

            if (file.Exists)
            {
                Response.Clear();
                Response.AddHeader("Content:Disposition", "attachment; filename=" + file.Name);
                Response.AddHeader("Content-Length",file.Length.ToString());
                Response.ContentType = "text/html";
                Response.Flush();
                Response.TransmitFile(file.FullName);
                Response.End();
            }
            else
            {
                generalLabel.Text = "Requested File is not available";
            }

        }
        protected void HandleSubmit(object sender, EventArgs e)
        {
            generalLabel.Text = dropDownListControl.SelectedValue;
        }
    }
}