
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class Timeline : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string password = Session["password"].ToString();
        H.InnerText = username;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        try
        {
           
            con.Open();
            string qry = "select * from signup where username='" + username + "' and password='" + password + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                string str=sdr["Firstname"].ToString()+ sdr["Lastname"].ToString();
                H1.Text = str;
                H2.Text = sdr["Email"].ToString();
                H3.Text = sdr["Address"].ToString();
                H4.Text = sdr["Gender"].ToString();

                    Image1.ImageUrl = "~/ShowImage.ashx?id=" + id;
               
            }
            else
            {
               


            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        } 
    }
  
    protected void Button1_Click1(object sender, EventArgs e)
    {
        
        Session.Clear();
        HttpCookie mycookies = new HttpCookie("Preferences");
        mycookies.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(mycookies);
        Response.Redirect("Homepage.aspx");  
    }
}