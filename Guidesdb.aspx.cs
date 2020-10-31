using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GirlsGK
{
    public partial class Guidesdb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                gvGuides.DataSource = SqlDataSource1;
                gvGuides.DataBind();
            }
        }

        protected void gvGuides_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvGuides.EditIndex = e.NewEditIndex;
            gvGuides.DataSource = SqlDataSource1;
            gvGuides.DataBind();
            Label8.Text = "";
            gvGuides.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void gvGuides_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvGuides.EditIndex = -1;
            gvGuides.DataSource = SqlDataSource1;
            gvGuides.DataBind();
            Label8.Text = "";
        }


        protected void gvGuides_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label userid = gvGuides.Rows[e.RowIndex].FindControl("lbluserid") as Label;
            TextBox title = gvGuides.Rows[e.RowIndex].FindControl("txttitle") as TextBox;
            TextBox date = gvGuides.Rows[e.RowIndex].FindControl("txtdate") as TextBox;

            // convert string to date
            DateTime dateToInsert = DateTime.Parse(date.Text);
            TextBox description = gvGuides.Rows[e.RowIndex].FindControl("txtdesc") as TextBox;
            String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string updatedata = "Update GuideActivity set Title = @title, Date = @date, Description = @description where UserId = @userid";
            con.Open();
            SqlCommand cmd = new SqlCommand(updatedata, con);
            cmd.Parameters.AddWithValue("Title", @title.Text);
            cmd.Parameters.AddWithValue("Date", dateToInsert.ToString("yyyy-MM-dd"));
            cmd.Parameters.AddWithValue("Description", @description.Text);
            cmd.Parameters.AddWithValue("UserId", @userid.Text);
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label8.Text = "Row data has been updated Successfully";
            gvGuides.EditIndex = -1;
            SqlDataSource1.DataBind();
            gvGuides.DataSource = SqlDataSource1;
            gvGuides.DataBind();
        }

        protected void gvGuides_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label userid = gvGuides.Rows[e.RowIndex].FindControl("lbluserid1") as Label;
            String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            String updatedata = "Delete from GuideActivity where UserId in (@userid)";
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand(updatedata);
            cmd.Parameters.AddWithValue("UserId", userid.Text);
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label8.Text = "Row has been deleted Successfully";
            gvGuides.EditIndex = -1;
            SqlDataSource1.DataBind();
            gvGuides.DataSource = SqlDataSource1;
            gvGuides.DataBind();
        }
    }
}
    