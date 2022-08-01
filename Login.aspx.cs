using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Text = "";
        if (Request.QueryString.ToString() != "")
        {
            if (Request.QueryString["type"].ToString() != null && Request.QueryString["id"].ToString() != null)
            {
                hdnPlantId.Value = Request.QueryString["Id"].ToString();
                hdnType.Value = Request.QueryString["type"].ToString();
            }
        }
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("sp_login", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@username", txtuname.Text);
        cmd.Parameters.AddWithValue("@password", txtpassword.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        con.Close();


        if (dt != null && dt.Rows != null && dt.Rows.Count > 0)
        {
            int registrationId = Convert.ToInt32(dt.Rows[0]["registrationId"].ToString());
            string loginId = dt.Rows[0]["loginId"].ToString();
            string firstname = dt.Rows[0]["first_name"].ToString();
            string userId = dt.Rows[0]["registrationId"].ToString();
            string lastname = dt.Rows[0]["last_name"].ToString();
            string email = dt.Rows[0]["email_id"].ToString();
            string role = dt.Rows[0]["role"].ToString();
            

            Session["registrationId"] = registrationId;
            Session["loginId"] = loginId;
            Session["firstname"] = firstname;
            Session["lastname"] = lastname;
            Session["userId"] = userId;
            Session["email"] = email;
            Session["role"] = role;


            if (role.ToString().ToLower() == CommonUtills.ROLE_ADMIN.ToLower())
            {
                Response.Redirect("manageprofile.aspx", true);
            }
            else if (role.ToString().ToLower() == CommonUtills.ROLE_USER.ToLower())
            {
                if (hdnType != null)
                {
                    if (hdnType.Value == "order")
                        Response.Redirect("PlaceOrder.aspx?id=" + hdnPlantId.Value, false);
                    else
                        Response.Redirect("usermanage.aspx", false);
                }
                else
                    Response.Redirect("usermanage.aspx", false);
            }
            else if (role.ToString().ToLower() == CommonUtills.ROLE_HOLDER.ToLower())
            {
                Response.Redirect("profile.aspx", true);
            }
            else
            {
                lblerror.Text = "UserName and Password is Incorrect";
            }

        }
        else
        {
            lblerror.Text = "UserName and Password is Incorrect";
        }

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        lblerror.Text = "";
        txtuname.Text = "";
        txtpassword.Text = "";
    }
}