using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CashierLog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void btnLog_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-DNPA690;Initial Catalog=Sardonyx;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            cn.Open();
            SqlCommand da = new SqlCommand("Select * From Registration where UserName='" + txtUser.Text + "'and Password='" + txtPass.Text + "'", cn);
            SqlDataReader sdr = da.ExecuteReader();

            if (sdr.Read())
            {
                
                Session["USER_ID"] = txtUser.Text;
                Response.Redirect("POS.aspx? username = " + txtUser.Text);

            }
            else
            {
                Label1.Visible = true;
            }
            cn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }


    }
}
