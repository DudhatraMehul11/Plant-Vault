using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "insert into feedback(name,email,phone_no,feedback,rating) values('"+txtName.Text+"','"+txtEmail.Text+"','"+txtPhone.Text+"','"+txtFeedBack.Text+"','"+ddlRating.SelectedValue+"')";
        SqlCommand cmd = new SqlCommand(query,con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtName.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        txtFeedBack.Text = "";
        ddlRating.SelectedValue = "0";
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        txtFeedBack.Text = "";
        ddlRating.SelectedValue = "0";
    }
}