using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class updatepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon2"].ToString());
        try
        {
            string t1 = TextBox1.Text;
            string t2 = TextBox2.Text;
            string t3 = TextBox3.Text;
            


            if (con.State != ConnectionState.Open)
                con.Open();
            string qry = "insert into request values('" + t1 + "','" + t2 + "','" + t3 + "')";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if ((sdr.Read()) != null)
            {
                Label1.Text = "Your request sent sucessfully";

            }
            else {
                Label1.Text = "Your request not sent sucessfully";

            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }


        
  

    }
}