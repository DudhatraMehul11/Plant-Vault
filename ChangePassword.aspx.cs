using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblError.Text = "";
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (Session["loginId"] != null)
        {
            if (txtOldPassword.Text != txtNewPassword.Text && txtNewPassword.Text == txtConformPassword.Text)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
                con.Open();
                string query = "update login set password = '" + txtNewPassword.Text + "' where  login_id = " + Session["loginId"] + " and password = '" + txtOldPassword.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                txtOldPassword.Text = "";
                txtNewPassword.Text = "";
                txtConformPassword.Text = "";

                lblError.Text = "Password is changed successfully.";
                lblError.ForeColor = System.Drawing.Color.Green;
                // Session.RemoveAll();
                // Response.Redirect("Login.aspx");
            }
            else
            {
                lblError.Text = "Old Password is not matched with new password.";
                lblError.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtOldPassword.Text = "";
        txtNewPassword.Text = "";
        txtConformPassword.Text = "";

        lblError.Text = "";
    }
}