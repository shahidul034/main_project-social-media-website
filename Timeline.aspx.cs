
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

public partial class Timeline : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username2 = Session["username"].ToString();
        string password = Session["password"].ToString();
        H.InnerText = username2;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        try
        {

            if (con.State != ConnectionState.Open)
                con.Open();
            string qry = "select * from sign_up where username='" + username2 + "' and password='" + password + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                string str=sdr["Firstname"].ToString()+" "+sdr["Lastname"].ToString();
                H1.Text = str;
                H2.Text = sdr["Email"].ToString();
                H3.Text = sdr["Address"].ToString();
                H4.Text = sdr["Gender"].ToString();
      
              
      
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

    private object GetData(string p)
    {
        throw new NotImplementedException();
    }
  
    protected void Button1_Click1(object sender, EventArgs e)
    {
        
        Session.Clear();
        HttpCookie mycookies = new HttpCookie("Preferences");
        mycookies.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(mycookies);
        Response.Redirect("Homepage.aspx");  
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string password = Session["password"].ToString();
        string t1 = TextBox1.Text;
        string t2 = TextBox5.Text;
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        try
        {

            if (con.State != ConnectionState.Open)
                con.Open(); 
            string qry = "update sign_up set Firstname='" + t1 + "' where username= '" + username + "'";
            string qry2 = "update sign_up set Lastname='" + t2 + "' where username= '" + username + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Close();
            sdr.Dispose();
            SqlCommand cmd2 = new SqlCommand(qry2, con);
            SqlDataReader sdr2 = cmd2.ExecuteReader();

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        } 

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string password = Session["password"].ToString();
        string t1 = TextBox2.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        try
        {

            if (con.State != ConnectionState.Open)
                con.Open();
            string qry = "update sign_up set Email='" + t1 + "' where username= '" + username + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        } 

    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string password = Session["password"].ToString();
        string t1 = TextBox3.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        try
        {

            if (con.State != ConnectionState.Open)
                con.Open();
            string qry = "update sign_up set Address='" + t1 + "' where username= '" + username + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        } 
    }
    protected void Button5_Click1(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string password = Session["password"].ToString();
        string t1 = TextBox4.Text;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        try
        {

            if (con.State != ConnectionState.Open)
                con.Open();
            string qry = "update sign_up set Gender='" + t1 + "' where username= '" + username + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        } 

    }

        protected void lbInsert_Click(object sender, EventArgs e)
{
    string username = Session["username"].ToString();
    string str1=((TextBox)GridView1.FooterRow.FindControl("post_text")).Text;
    string str2 = ((TextBox)GridView1.FooterRow.FindControl("details_text")).Text;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon2"].ToString());
    try
    {

        if (con.State != ConnectionState.Open)
            con.Open();
        string qry = "insert into post_store values('" + username + "','" + str1 + "','" + str2 + "')";
           
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataReader sdr = cmd.ExecuteReader();

        con.Close();
    }
    catch (Exception ex)
    {
        Response.Write(ex.Message);
    } 
  

    }
        protected void delete_button(object sender, EventArgs e)
        {
             string username = Session["username"].ToString();
             string str = TextBox6.Text;

             SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon2"].ToString());
             try
             {

                 if (con.State != ConnectionState.Open)
                     con.Open();
                 string qry = "delete from post_store where post_name='"+str+"' and username='"+username+"'";

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