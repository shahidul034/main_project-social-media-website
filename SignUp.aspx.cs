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
    static String imagelink;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=SHAHIDULSHAKIB\SQLEXPRESS2;Initial Catalog=signup;Integrated Security=True");
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
            if (uploadimage() == true)
            {
                String query = "insert into [picture](username,profileimage) values('" + TextBox1.Text + "','" + imagelink + "')";
                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandText = query;
                cmd2.Connection = con;
                cmd2.ExecuteNonQuery();
                
            }



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
        SqlConnection conn = new SqlConnection(@"Data Source=SHAHIDULSHAKIB\SQLEXPRESS2;Initial Catalog=post;Integrated Security=True");
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
  
    }


    private Boolean uploadimage()
    {
        Boolean imagesaved = false;
        if (FileUpload1.HasFile == true)
        {

            String contenttype = FileUpload1.PostedFile.ContentType;

            if (contenttype == "image/jpeg" || contenttype == "image/png" || contenttype == "image/gif")
            {
                int filesize;
                filesize = FileUpload1.PostedFile.ContentLength;

                //if (filesize <= 51200)
                if (true)
                {
                    System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                    int height = img.Height;
                    int width = img.Width;
                    //if (height == 200 && width == 200)
                    if (true)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/ProfileImage/") + TextBox1.Text + ".jpg");
                        //Image1.ImageUrl = "~/ProfileImage/" + TextBox1.Text + ".jpg";
                        imagelink = "ProfileImage/" + TextBox1.Text + ".jpg";
                        imagesaved = true;
                    }
                    else
                    {
                        //Labelsave.Text = "Kindly Upload JPEG Image in Proper Dimensions 200 x 200";
                    }




                }
                else
                {
                    //Labelsave.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
                }

            }
            else
            {
                //Labelsave.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
            }
        }
        else
        {
            //Labelsave.Text = "You have not selected any file - Browse and Select File First";
        }

        return imagesaved;

    }

    
    
        
    }
