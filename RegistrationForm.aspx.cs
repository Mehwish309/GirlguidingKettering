using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GirlsGK
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string username = tbUname.Text; //Username
            string password = tbpwd.Text;//Password
            string confirmpassword = tbCpwd.Text;//ConfirmPassword
            string email = tbemail.Text;//Email
            string name = tbname.Text;//Name
            string unit = tbunit.Text;//Name
            string pattern = @"^(?=.*\d)(?=.*[a-zA-Z]).{8,20}$";
            Match match = Regex.Match(password, pattern);

            if (username != "" && password != "" && email != "" && name != "" && unit != "")
            {
                if (password == confirmpassword)
                {
                    if (match.Success)
                    {
                        String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
                        using (SqlConnection con = new SqlConnection(CS))
                        {
                            string query = "Insert into Register values('" + tbUname.Text + "','" + tbname.Text + "' , '" + tbemail.Text + "' , '" + tbpwd.Text + "' , '" + tbunit.Text + "')";

                            using (SqlCommand cmd = new SqlCommand(query, con))
                            {
                                con.Open();
                                cmd.ExecuteNonQuery();
                                lblmsg.Text = "Register Successfull";
                                lblmsg.ForeColor = Color.Green;
                                Response.Redirect("~/Signin.aspx");

                                tbUname.Text = "";
                                tbname.Text = "";
                                tbemail.Text = "";
                                tbpwd.Text = "";
                                tbCpwd.Text = "";
                                tbunit.Text = "";



                            }

                        }

                    }
                    else
                    {
                        lblmsg.Text = "password not in the correct format";
                    }
                }
                else
                {
                    lblmsg.Text = "Password do not match";
                    lblmsg.ForeColor = Color.Blue;
                }
            }
            else
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = "All Field are Mandatory";
            }




        }
    }
}