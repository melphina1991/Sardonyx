using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection sqlcon = new SqlConnection(@"Data Source=DESKTOP-DNPA690;Initial Catalog=Sardonyx;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
    protected void Page_Load(object sender, EventArgs e)

    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    
        if (!IsPostBack)
        {
            btnDel.Enabled = false;
            fillgridview();
        }

        if (Session["USER_ID"] != null)
        {
            Label5.Text = Session["USER_ID"].ToString();
        }

        else
        {
            Label5.Text = "Sorry session was not created";
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Clear();
    }

    public void Clear()
    {
        hfContactId.Value = "";
        txtName.Text = txtPass.Text = txtUser.Text = "";
        lblError.Text = lblSuccess.Text = "";
        btnSave.Text = "Save";
        btnDel.Enabled = false;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (sqlcon.State==ConnectionState.Closed)
        
            sqlcon.Open();
        SqlCommand cmd = new SqlCommand("Employee",sqlcon);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@ContactID",(hfContactId.Value==""?0:Convert.ToInt32(hfContactId.Value)));
        cmd.Parameters.AddWithValue("@Name",txtName.Text.Trim());
        cmd.Parameters.AddWithValue("@UserName",txtUser.Text.Trim());
        cmd.Parameters.AddWithValue("@Password",txtPass.Text.Trim());
        cmd.ExecuteNonQuery();
        sqlcon.Close();
        string contactID = hfContactId.Value;
        Clear();
        if (contactID == "")

            lblSuccess.Text = "Saved Successfully";
        else
            lblSuccess.Text = "Updated Successfully";
        fillgridview();
    }

    void fillgridview()
    {
        if (sqlcon.State == ConnectionState.Closed)
            sqlcon.Open();
        SqlDataAdapter da = new SqlDataAdapter("EmpView",sqlcon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataTable dtble = new DataTable();
        da.Fill(dtble);
        sqlcon.Close();
        gvEmp.DataSource = dtble;
        gvEmp.DataBind();
    }

    protected void lnk_OnClick (object sender, EventArgs e)
    {
        int contactID = Convert.ToInt32((sender as LinkButton).CommandArgument);
        if (sqlcon.State == ConnectionState.Closed)

            sqlcon.Open();
        SqlDataAdapter da = new SqlDataAdapter("EmpViewId", sqlcon);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        da.SelectCommand.Parameters.AddWithValue("@ContactID", contactID);
        DataTable dtble = new DataTable();
        da.Fill(dtble);
        sqlcon.Close();
        hfContactId.Value = contactID.ToString();
        txtName.Text = dtble.Rows[0]["Name"].ToString();
        txtUser.Text = dtble.Rows[0]["UserName"].ToString();
        txtPass.Text = dtble.Rows[0]["Password"].ToString();
        btnSave.Text = "Update";
        btnDel.Enabled = true;
    }

    protected void btnDel_Click(object sender, EventArgs e)
    {
        if (sqlcon.State == ConnectionState.Closed)

            sqlcon.Open();

        SqlCommand cmd = new SqlCommand("EmpDelete",sqlcon);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@ContactID", Convert.ToInt32(hfContactId.Value));
        cmd.ExecuteNonQuery();
        sqlcon.Close();
        Clear();
        fillgridview();
        lblSuccess.Text = "Deleted Successfully";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("USER_ID");
        Session.RemoveAll();
        Response.Redirect("Index.aspx");
    }
}