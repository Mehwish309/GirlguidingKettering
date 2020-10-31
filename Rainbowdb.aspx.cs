using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace GirlsGK
{
    public partial class Rainbowdb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvRainbow.DataSource = SqlDataSource1;
                gvRainbow.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvRainbow.EditIndex = e.NewEditIndex;
            gvRainbow.DataSource = SqlDataSource1;
            gvRainbow.DataBind();
            Label8.Text = "";
            gvRainbow.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvRainbow.EditIndex = -1;
            gvRainbow.DataSource = SqlDataSource1;
            gvRainbow.DataBind();
            Label8.Text = "";
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label userid = gvRainbow.Rows[e.RowIndex].FindControl("lbluserid") as Label;
            TextBox title = gvRainbow.Rows[e.RowIndex].FindControl("txttitle") as TextBox;
            TextBox date = gvRainbow.Rows[e.RowIndex].FindControl("txtdate") as TextBox;

            // convert string to date
            DateTime dateToInsert = DateTime.Parse(date.Text);

            TextBox description = gvRainbow.Rows[e.RowIndex].FindControl("txtdesc") as TextBox;
            String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string updatedata = "Update RainbowActivity set Title = @title, Date = @date, Description = @description where UserId = @userid";
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
            gvRainbow.EditIndex = -1;
            SqlDataSource1.DataBind();
            gvRainbow.DataSource = SqlDataSource1;
            gvRainbow.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label userid = gvRainbow.Rows[e.RowIndex].FindControl("lbluserid1") as Label;
            String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            String updatedata = "Delete from RainbowActivity where UserId in (@userid)";
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand(updatedata);
            cmd.Parameters.AddWithValue("UserId", userid.Text);
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label8.Text = "Row has been deleted Successfully";
            gvRainbow.EditIndex = -1;
            SqlDataSource1.DataBind();
            gvRainbow.DataSource = SqlDataSource1;
            gvRainbow.DataBind();
        }
    }

}