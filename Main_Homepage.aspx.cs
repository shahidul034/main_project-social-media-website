using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Main_Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        try
        {
            string Contact_name = contact_name.Text;
            string Contact_email = contact_email.Text;
            string Contact_message = contact_message.Text;
            
            if (con.State != ConnectionState.Open)
                con.Open();
            string qry = "insert into contact values('" + Contact_name + "','" + Contact_email + "','" + Contact_message + "')";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Label1.Text = "your message sucessfully submitted!!";
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}