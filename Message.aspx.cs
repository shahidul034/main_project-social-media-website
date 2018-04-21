using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void button_click(object sender, EventArgs e)
    {
        string senderq = Session["username"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        try
        {
            string receiver = TextBox3.Text;
            string msg = TextBox4.Text;

            if (con.State != ConnectionState.Open)
                con.Open();
            string qry = "insert into sign_up values('" + senderq + "','" + receiver + "','" + msg + "')";
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