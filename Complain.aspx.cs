using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Complain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "insert into complain(name,modified_date,entry_date,description) values('"+txtName.Text+"','"+txtModifiedDate.Text+"','"+txtEntryDate.Text+"','"+txtDes.Text+"')";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtName.Text = "";
        txtEntryDate.Text = "";
        txtModifiedDate.Text = "";
        ddlRegistratoinId.SelectedValue = "0";
        ddlloginId.SelectedValue = "0";
        txtDes.Text = "";
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtEntryDate.Text = "";
        txtModifiedDate.Text = "";
        ddlRegistratoinId.SelectedValue = "0";
        ddlloginId.SelectedValue = "0";
        txtDes.Text = "";
    }
}