using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GirlsGK
{
    public partial class Rainbow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            string query = "select * from RainbowActivity";
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            LVRainbow.DataSource = dt;
            LVRainbow.DataBind();
        }
    }
}