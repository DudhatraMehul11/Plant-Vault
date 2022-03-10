using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        


    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into contact(name,email_id,mobile_no,subject) values('" + txtName.Text + "','" + txtEmail.Text + "','" + Convert.ToDecimal(txtPhone.Text) + "','" + txtSub.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        txtSub.Text = "";
        
    }
}