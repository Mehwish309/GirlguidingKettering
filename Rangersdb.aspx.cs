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
    public partial class Rangersdb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvRangers.DataSource = SqlDataSource1;
                gvRangers.DataBind();
            }
        }
        protected void gvRangers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvRangers.EditIndex = e.NewEditIndex;
            gvRangers.DataSource = SqlDataSource1;
            gvRangers.DataBind();
            Label8.Text = "";
            gvRangers.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void gvRangers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvRangers.EditIndex = -1;
            gvRangers.DataSource = SqlDataSource1;
            gvRangers.DataBind();
            Label8.Text = "";
        }


        protected void gvRangers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label userid = gvRangers.Rows[e.RowIndex].FindControl("lbluserid") as Label;
            TextBox title = gvRangers.Rows[e.RowIndex].FindControl("txttitle") as TextBox;
            TextBox date = gvRangers.Rows[e.RowIndex].FindControl("txtdate") as TextBox;

            // convert string to date
            DateTime dateToInsert = DateTime.Parse(date.Text);

            TextBox description = gvRangers.Rows[e.RowIndex].FindControl("txtdesc") as TextBox;
            String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string updatedata = "Update RangersActivity set Title = @title, Date = @date, Description = @description where UserId = @userid";
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
            gvRangers.EditIndex = -1;
            SqlDataSource1.DataBind();
            gvRangers.DataSource = SqlDataSource1;
            gvRangers.DataBind();
        }

        protected void gvRangers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label userid = gvRangers.Rows[e.RowIndex].FindControl("lbluserid1") as Label;
            String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            String updatedata = "Delete from RangersActivity where UserId in (@userid)";
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand(updatedata);
            cmd.Parameters.AddWithValue("UserId", userid.Text);
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label8.Text = "Row has been deleted Successfully";
            gvRangers.EditIndex = -1;
            SqlDataSource1.DataBind();
            gvRangers.DataSource = SqlDataSource1;
            gvRangers.DataBind();
        }
    }
}