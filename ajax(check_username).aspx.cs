using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ajax_check_username_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected int function(string str)
    {
        SqlConnection con = new SqlConnection(@"Data Source=SHAHIDULSHAKIB\SQLEXPRESS2;Initial Catalog=signup;Integrated Security=True");
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "select * from sign_up where username='" + str + "'";
        cmd.ExecuteNonQuery();

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        da.Fill(dt);

        if (dt.Rows.Count == 1)
        {
            return 1;

        }
        else
            return 0;

        con.Close();

        return 0;
    }
    
}