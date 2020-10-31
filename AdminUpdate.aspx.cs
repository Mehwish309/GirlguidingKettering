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
    public partial class AdminUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label8.Text = "";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label8.Text = "";
        }


        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label userid = GridView1.Rows[e.RowIndex].FindControl("lbluserid") as Label;
            TextBox username = GridView1.Rows[e.RowIndex].FindControl("txtUname") as TextBox;
            TextBox name = GridView1.Rows[e.RowIndex].FindControl("txtName") as TextBox;
            TextBox email = GridView1.Rows[e.RowIndex].FindControl("txtEmail") as TextBox;
            TextBox password = GridView1.Rows[e.RowIndex].FindControl("txtPassword") as TextBox;
            TextBox unit = GridView1.Rows[e.RowIndex].FindControl("txtUnit") as TextBox;
            String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            string updatedata = "Update Register set UserName = @username, Name = @name, Email = @email, Password = @password, Unit =@unit where UserId = @userid";
            con.Open();
            SqlCommand cmd = new SqlCommand(updatedata, con);
            cmd.Parameters.AddWithValue("UserName", @username.Text);
            cmd.Parameters.AddWithValue("Name", @name.Text);
            cmd.Parameters.AddWithValue("Email", @email.Text);
            cmd.Parameters.AddWithValue("Password", @password.Text);
            cmd.Parameters.AddWithValue("Unit", @unit.Text);
            cmd.Parameters.AddWithValue("UserId", @userid.Text);
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label8.Text = "Row data has been updated Successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

        }

        protected void lnkbtninsert_Click(object sender, EventArgs e)
        {


            TextBox userid = GridView1.FooterRow.FindControl("txtFuserid") as TextBox;
            TextBox username = GridView1.FooterRow.FindControl("txtFUname") as TextBox;
            TextBox name = GridView1.FooterRow.FindControl("txtFName") as TextBox;
            TextBox email = GridView1.FooterRow.FindControl("txtFEmail") as TextBox;
            TextBox password = GridView1.FooterRow.FindControl("txtFPassword") as TextBox;
            TextBox unit = GridView1.FooterRow.FindControl("txtFUnit") as TextBox;
            if (username.Text != "" && password.Text != "")
            {
                String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
                string query = "INSERT INTO Register (UserName, Name, Email, Password, Unit) VALUES (@username, @name, @email, @password, @unit)";
                SqlConnection con = new SqlConnection(CS);
                con.Open();

                SqlCommand cmd = new SqlCommand(query);
                cmd.Parameters.AddWithValue("UserName", @username.Text);
                cmd.Parameters.AddWithValue("Name", @name.Text);
                cmd.Parameters.AddWithValue("Email", @email.Text);
                cmd.Parameters.AddWithValue("Password", @password.Text);
                cmd.Parameters.AddWithValue("Unit", @unit.Text);
             

                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label8.Text = "New Row Inserted Successfully";
                SqlDataSource1.DataBind();
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            else
            {
                Label8.Text = "Please Fill the required fields";

            }

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label userid = GridView1.Rows[e.RowIndex].FindControl("lbluserid1") as Label;
            String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            String updatedata = "Delete from Register where UserID in (@userid)";
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand(updatedata);
            cmd.Parameters.AddWithValue("UserID", userid.Text);
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label8.Text = "Row has been deleted Successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }
}