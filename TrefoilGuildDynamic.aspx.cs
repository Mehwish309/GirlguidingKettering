using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GirlsGK
{
    public partial class TrefoilGuildDynamic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblmsg.Visible = false;
            }
        }
        protected void Add_Click(object sender, EventArgs e)
        {
            lblmsg.Visible = true;
            string title = tbtitle.Text;
            string date = txtDate.Text;

            DateTime dateForSql = DateTime.Parse(date);


            string description = tbdesc.Text;
            string imageName = Path.GetFileName(Fileimgsave.PostedFile.FileName);

            if (!string.IsNullOrEmpty(imageName))
            {
                string imageFullPath = Path.Combine(Server.MapPath("~/ImagePath"), imageName);
                Fileimgsave.SaveAs(imageFullPath);
            }
            else
            {
                imageName = "ImagenotfoundTrefoilGuild.png";
            }

            if (title != "" && date != null && description != "")
            {
                if (".jpg" == Path.GetExtension(imageName) || ".png" == Path.GetExtension(imageName))
                {
                    String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        con.Open();

                        string query = "INSERT INTO TrefoilGuildActivity(Title, Image, Date, Description)" +
                            " VALUES(@title, @Image, @Date, @description)";
                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            cmd.Parameters.AddWithValue("Title", title);
                            cmd.Parameters.AddWithValue("Date", dateForSql.ToString("yyyy-MM-dd"));
                            cmd.Parameters.AddWithValue("Image", imageName);
                            cmd.Parameters.AddWithValue("Description", description);
                            cmd.ExecuteNonQuery();
                            lblmsg.Text = "Added Successfully";
                            lblmsg.ForeColor = Color.Green;
                            tbtitle.Text = "";
                            tbdesc.Text = "";
                            txtDate.Text = "";
                        }
                    }
                }
                else
                {
                    lblmsg.ForeColor = Color.Red;
                    lblmsg.Text = "image format must be in .jpg or .png";
                }
            }
            else
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = "All Field are Mandatory";
            }
        }


        protected void logoutsession_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = string.Empty;
            Response.Redirect("signin.aspx");
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrefoilGdb.aspx");
        }
    }
}












