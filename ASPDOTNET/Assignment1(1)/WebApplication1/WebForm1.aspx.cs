using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] str = new string[] { "Select", "Yamaha", "Hero", "TVS", "KTM" };
                for (int i = 0; i < str.Length; i++)
                {
                    DropDownList1.Items.Add(str[i]);
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = DropDownList1.Text;
            Image1.ImageUrl = "~/images/" + str + ".jfif";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Select")
            {
                Label1.Text = "Please Select a Bike";
            }
            else if (DropDownList1.Text == "Yamaha")
            {
                Label1.Text = "Rs.120000";
            }
            else if (DropDownList1.Text == "Hero")
            {
                Label1.Text = "Rs.80000";
            }
            else if (DropDownList1.Text == "TVS")
            {
                Label1.Text = "Rs. 90000";
            }
            else if (DropDownList1.Text == "KTM")
            {
                Label1.Text = " Rs. 150000";
            }
            else
                Label1.Text = "";
        }
    }
}