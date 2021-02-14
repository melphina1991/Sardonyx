using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Users : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["USER_ID"] != null)
        {
            Label2.Text = Session["USER_ID"].ToString();
        }

        else
        {
            Label2.Text = "Sorry session was not created";
        }

        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-DNPA690;Initial Catalog=Sardonyx;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        cn.Open();
        SqlCommand cmd = new SqlCommand("Select Name From Registration", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        cn.Close();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("USER_ID");
        Session.RemoveAll();
        Response.Redirect("Index.aspx");
    }
}