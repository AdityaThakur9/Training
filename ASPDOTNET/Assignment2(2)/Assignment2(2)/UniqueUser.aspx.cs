using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2_2_
{
    public partial class UniqueUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application.Lock();
            Label2.Text = Application["onlineusers"].ToString();
            Application.UnLock();
            if (Session["user"] != null)
            {

            }
            else
            {
                Session["user"] = "Guest";
                Session.Timeout = 2;
            }
        }
    }
}