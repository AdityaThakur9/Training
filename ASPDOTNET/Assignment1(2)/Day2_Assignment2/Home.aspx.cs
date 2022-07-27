using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day2_Assignment2
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && PreviousPage != null)
            {
                TextBox T1 = (TextBox)PreviousPage.FindControl("Textbox1");
                Label1.Text = "Welcome " + T1.Text + " You have successfully logged in";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}