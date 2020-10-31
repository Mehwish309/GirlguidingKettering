using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GirlsGK
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
                {
                    tbusername.Text = Request.Cookies["UNAME"].Value;
                    tbpwd.Attributes["value"] = Request.Cookies["PWD"].Value;
                    CheckBox1.Checked = true;

                }
            }
        }

        protected void btSignin_Click(object sender, EventArgs e)
        {
            string username = tbusername.Text;
            string password = tbpwd.Text;

            string CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                string query = "select * from Register where Username = @username and Password = @password;";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", tbusername.Text);
                cmd.Parameters.AddWithValue("@password", tbpwd.Text);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    if (CheckBox1.Checked)
                    {
                       
                        Response.Cookies["UName"].Value = tbusername.Text;
                        Response.Cookies["PWD"].Value = tbpwd.Text;

                        Response.Cookies["UName"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                    }
                    //if usertype= Rainbow goto userpage
                    string Utype;
                    Utype = dt.Rows[0][5].ToString().Trim();

                    if (Utype == "Rainbows")
                    {
                        Session["USERNAME"] = tbusername.Text;
                        Response.Redirect("RainbowDynamic.aspx");
                    }
                    //if usertype= Brownie goto AdminPage

                    else if (Utype == "Brownies")
                    {
                        Session["USERNAME"] =  tbusername.Text;
                        Response.Redirect("BrownieDynamic.aspx");
                        tbusername.Text = "";
                        tbpwd.Text = "";
                    }
                    else if (Utype == "Guides")
                    {
                        Session["USERNAME"] = tbusername.Text;
                        Response.Redirect("GuidesDynamic.aspx");
                        tbusername.Text = "";
                        tbpwd.Text = "";
                    }
                    else if (Utype == "Rangers")
                    {
                        Session["USERNAME"] = tbusername.Text;
                        Response.Redirect("RangersDynamic.aspx");
                        tbusername.Text = "";
                        tbpwd.Text = "";
                    }
                    else if (Utype == "GuidingForYoungWomen")
                    {
                        Session["USERNAME"] = tbusername.Text;
                        Response.Redirect("GuidingForYoungWomenDynamic.aspx");
                        tbusername.Text = "";
                        tbpwd.Text = "";
                    }
                    else if (Utype == "Trefoil Guild")
                    {
                        Session["USERNAME"] = tbusername.Text;
                        Response.Redirect("TrefoilGuildDynamic.aspx");
                        tbusername.Text = "";
                        tbpwd.Text = "";
                    }
                   
                }
            }
            lblerr.Text = "Invalid Users or Password!";
        }

        
    }
}
