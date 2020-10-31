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
    public partial class TrefoilGdb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                gvTrefoilGuild.DataSource = SqlDataSource1;
                gvTrefoilGuild.DataBind();
            }
        }
        protected void gvTrefoilGuild_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvTrefoilGuild.EditIndex = e.NewEditIndex;
            gvTrefoilGuild.DataSource = SqlDataSource1;
            gvTrefoilGuild.DataBind();
            Label8.Text = "";
            gvTrefoilGuild.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }
        protected void gvTrefoilGuild_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvTrefoilGuild.EditIndex = -1;
            gvTrefoilGuild.DataSource = SqlDataSource1;
            gvTrefoilGuild.DataBind();
            Label8.Text = "";
        }
        protected void gvTrefoilGuild_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label userid = gvTrefoilGuild.Rows[e.RowIndex].FindControl("lbluserid") as Label;
            TextBox title = gvTrefoilGuild.Rows[e.RowIndex].FindControl("txttitle") as TextBox;
            TextBox date = gvTrefoilGuild.Rows[e.RowIndex].FindControl("txtdate") as TextBox;

            // convert string to date
            DateTime dateToInsert = DateTime.Parse(date.Text);

            TextBox description = gvTrefoilGuild.Rows[e.RowIndex].FindControl("txtdesc") as TextBox;
            String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string updatedata = "Update TrefoilGuildActivity set Title = @title, Date = @date, Description = @description where UserId = @userid";
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
            gvTrefoilGuild.EditIndex = -1;
            SqlDataSource1.DataBind();
            gvTrefoilGuild.DataSource = SqlDataSource1;
            gvTrefoilGuild.DataBind();
        }
        protected void gvTrefoilGuild_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label userid = gvTrefoilGuild.Rows[e.RowIndex].FindControl("lbluserid1") as Label;
            String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            String updatedata = "Delete from TrefoilGuildActivity where UserId in (@userid)";
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand(updatedata);
            cmd.Parameters.AddWithValue("UserId", userid.Text);
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label8.Text = "Row has been deleted Successfully";
            gvTrefoilGuild.EditIndex = -1;
            SqlDataSource1.DataBind();
            gvTrefoilGuild.DataSource = SqlDataSource1;
            gvTrefoilGuild.DataBind();
        }
    }
}