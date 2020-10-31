using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;

namespace GirlsGK
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
                {
                    tbusername.Text = Request.Cookies["username"].Value;
                    tbpwd.Attributes["value"] = Request.Cookies["password"].Value;
                    CheckBox1.Checked = true;

                }
            }
        }


        protected void btSignin_Click1(object sender, EventArgs e)
        {
            string user = ConfigurationManager.AppSettings["username"].ToString();
            string pass = ConfigurationManager.AppSettings["password"].ToString();
            if (user == tbusername.Text && pass == tbpwd.Text)
            {
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                lblerr.Text = "Invalid username or password";
            }

        }
    }
}