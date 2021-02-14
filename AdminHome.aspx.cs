using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["USER_ID"]!=null)
        {
            Label2.Text = Session["USER_ID"].ToString();
        }

        else
        {
            Label2.Text = "Sorry session was not created";
        }
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

    protected void Unnamed2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Users.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("USER_ID");
        Session.RemoveAll();
        Response.Redirect("Index.aspx");
    }
}