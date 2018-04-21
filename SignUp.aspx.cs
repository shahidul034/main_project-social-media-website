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
using System.IO;


public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        try
        {
            string t1 = TextBox1.Text;
            string t2 = TextBox2.Text;
            string t3 = TextBox3.Text;
            string t4 = TextBox4.Text;
            string t5 = TextBox5.Text;
            string t6 = TextBox6.Text;
            string t7="";
            if (DropDownList1.SelectedValue == "")
            {
                Label2.Text = "Please Select a Gender";
            }
            else {
                t7= DropDownList1.SelectedValue;  
            
            }  
                
        
            


            if (con.State != ConnectionState.Open)
                con.Open(); 
            string qry = "insert into sign_up values('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "','" + t7 + "')";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
              
                Response.Redirect("Homepage.aspx");
         
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }


        /////////////////////////////
        string username = TextBox1.Text;
        string str1 = "hi";
        string str2 = "hello";
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon2"].ToString());
        try
        {

            if (conn.State != ConnectionState.Open)
                conn.Open();
            string qry2 = "insert into post_store values('" + username + "','" + str1 + "','" + str2 + "')";

            SqlCommand cmd2 = new SqlCommand(qry2, conn);
            SqlDataReader sdr2 = cmd2.ExecuteReader();
           

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        } 
  




        ////////////////////////////////////////
       /* string NewName = TextBox1.Text;
        string table_name = NewName;

         SqlConnection newcon = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon2"].ToString());
          try
          {
              string UserName = TextBox1.Text;

              if (newcon.State != ConnectionState.Open)
                  newcon.Open();
              string column1 = "Serial_number";
              string column2 = "post_name";
          string column3 = "post_details";
          
          //string column3 = "post_name2";
          string query = "create  table " + table_name + " (" + column1 + " int Primary key identity," + column2 + " nvarchar(MAX)," + column3 + " nvarchar(MAX)) "; 
              SqlCommand cmd2 = new SqlCommand(query, newcon);
              SqlDataReader sdr2 = cmd2.ExecuteReader();
              newcon.Close();
          }
          catch (Exception ex)
          {
              Response.Write(ex.Message);
          }
        /////////////////

       
        */
        /*SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon2"].ToString());
        string NewName = TextBox1.Text;
        string table_name = NewName;

        string column1 = "Serial_number";
        string column2 = "post_name";
        string column3 = "post_name2";
        string query = "create  table " + table_name + " (" + column1 + " int," + column2 + " varchar(255)" + column3 +" varchar(255))";
        SqlCommand cmd2 = new SqlCommand(query, conn);
        conn.Open();
        cmd2.ExecuteNonQuery();
        conn.Close();*/


        ///////////////////////////

 


    }
    
    
        
    }
