
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
    static String imagelink;
    protected void Page_Load(object sender, EventArgs e)
    {
        string username2="", password="";

        try
        {
            username2 = Session["username"].ToString();
            password = Session["password"].ToString();
        }
        catch (Exception ex) {
            username2 = Request.Cookies["uname"].Value;
            password = Request.Cookies["password"].Value;
            try
            {
                username2 = Request.Cookies["uname"].Value;
                password = Request.Cookies["password"].Value;
            }
            catch (Exception ex2) {
                Response.Redirect("Homepage.aspx");
            }
        }
            
       
        H.InnerText = username2;
        SqlConnection con = new SqlConnection(@"Data Source=SHAHIDULSHAKIB\SQLEXPRESS2;Initial Catalog=signup;Integrated Security=True");
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
                Label4.Text = str;
                Label11.Text = sdr["Email"].ToString();
                Label12.Text = sdr["Address"].ToString();
                Label13.Text = sdr["Gender"].ToString();
      
              
      
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

        SqlConnection mycon = new SqlConnection(@"Data Source=SHAHIDULSHAKIB\SQLEXPRESS2;Initial Catalog=signup;Integrated Security=True");
        mycon.Open();
        String myquery = "Select * from picture where username='" + username2 + "'";
        SqlCommand cmd2 = new SqlCommand(myquery, mycon);
        SqlDataReader sdr2 = cmd2.ExecuteReader();
 
        if (sdr2.Read())
        {
            imagelink = sdr2["profileimage"].ToString();    
            Image1.ImageUrl = imagelink + "?n=" + DateTime.Now.Second.ToString();

        }
        else
        {
            //Labeld.Text = "Particular Roll Number Not Found";

        }
        mycon.Close();
    

        

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
    protected void Button6_Click(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string password = Session["password"].ToString();
        string t1 = TextBox8.Text;
        string t2 = TextBox11.Text;

        SqlConnection con = new SqlConnection(@"Data Source=SHAHIDULSHAKIB\SQLEXPRESS2;Initial Catalog=signup;Integrated Security=True");
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
    protected void Button7_Click(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string password = Session["password"].ToString();
        string t1 = TextBox12.Text;
        SqlConnection con = new SqlConnection(@"Data Source=SHAHIDULSHAKIB\SQLEXPRESS2;Initial Catalog=signup;Integrated Security=True");
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
    protected void Button8_Click(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string password = Session["password"].ToString();
        string t1 = TextBox13.Text;
        SqlConnection con = new SqlConnection(@"Data Source=SHAHIDULSHAKIB\SQLEXPRESS2;Initial Catalog=signup;Integrated Security=True");
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
    protected void Button9_Click(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string password = Session["password"].ToString();
        string t1 = TextBox14.Text;
        SqlConnection con = new SqlConnection(@"Data Source=SHAHIDULSHAKIB\SQLEXPRESS2;Initial Catalog=signup;Integrated Security=True");
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

    protected void Button10_Click(object sender, EventArgs e)
{
    string username = Session["username"].ToString();
    string str1 = TextBox18.Text;
    string str2 = TextBox16.Text;
    SqlConnection con = new SqlConnection(@"Data Source=SHAHIDULSHAKIB\SQLEXPRESS2;Initial Catalog=post;Integrated Security=True");
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
    protected void Button14_Click(object sender, EventArgs e)
        {
             string username = Session["username"].ToString();
             string str = TextBox17.Text;

             SqlConnection con = new SqlConnection(@"Data Source=SHAHIDULSHAKIB\SQLEXPRESS2;Initial Catalog=post;Integrated Security=True");
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
    protected void Button15_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Cookies["uname"].Expires = DateTime.Now.AddMinutes(-1);
            Response.Redirect("Main_Homepage.aspx");
        }







    
}