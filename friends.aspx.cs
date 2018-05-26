using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class friends : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=SHAHIDULSHAKIB\SQLEXPRESS2;Initial Catalog=post;Integrated Security=True");
        try
        {
            string t1 = TextBox1.Text;
            string t2 = Session["username"].ToString(); ;
           


            if (con.State != ConnectionState.Open)
                con.Open();
            string qry = "insert into friends values('" + t2 + "','" + t1 + "')";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    
}