using System;
using System.Collections.Generic;
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

        SqlDataSource1.InsertParameters["sender"].DefaultValue = senderq;
        SqlDataSource1.InsertParameters["Receiver"].DefaultValue =
            ((TextBox)GridView1.FooterRow.FindControl("receiver")).Text;
        SqlDataSource1.InsertParameters["msg"].DefaultValue =
            ((TextBox)GridView1.FooterRow.FindControl("msg2")).Text;
        SqlDataSource1.Insert();
    }
}