using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2_1_
{
    public partial class Assignment2_1_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string[] str = new string[] { "Select", "abc@gmail.com", "csv@bcs.com", "psv@gmail.com", "tre@prj.com" };
                for (int i = 0; i < str.Length; i++)
                {
                    DropdownList.Items.Add(str[i]);
                }
            }

            RangeValidator2.MaximumValue = DateTime.Today.ToShortDateString();
            RangeValidator2.MinimumValue = DateTime.Today.ToShortDateString();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Write("Validated");
            }
            else
            {
                Response.Write("Not Valid");
            }

        }
    }
}