
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

public partial class Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie usercookie;
        usercookie = Request.Cookies["Preferences"];
        if (usercookie != null)
        {
            if (!usercookie.Value.Equals(-1)) {
                Session.Clear();
                Session["Login"] = TextBox1.Text;
                Response.Redirect("Timeline.aspx");
            }
 
        }

     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        try
        {
            string uid = TextBox1.Text;
            string pass = TextBox2.Text;
            if (con.State != ConnectionState.Open)
                con.Open(); 
            string qry = "select * from sign_up where username='" + uid + "' and password='" + pass + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["Login"] = TextBox1.Text;
                if (CheckBox1.Checked)
                {
                    HttpCookie usercookie;
                    usercookie=Request.Cookies["Preferences"];
                    if (usercookie==null) {
                        usercookie = new HttpCookie("Preferences");
                        usercookie.Expires = DateTime.Now.AddMonths(1);
                        Response.Cookies.Add(usercookie);
                    }
                
                }
                Session["username"] = uid;
                Session["password"] = pass;
                Response.Redirect("Timeline.aspx");
                //sucessfailure.Text = "Login Sucess......!!" + uid + " " + pass + "\n";
            }
            else
            {
                show.Text = "UserId & Password Is not correct Try again..!! ";
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        } 
    }
}