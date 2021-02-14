using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class POS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Request.QueryString["username"];
        
        Label1.Text =  username  ;

        if (Session["USER_ID"] != null)
        {
            Label2.Text = Session["USER_ID"].ToString();
        }

        else
        {
            Label2.Text = "Sorry session was not created";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("USER_ID");
        Session.RemoveAll();
        Response.Redirect("Index.aspx");
    }
}