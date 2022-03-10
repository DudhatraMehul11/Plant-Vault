using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Country : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if (!IsPostBack)
        {
            btnSave.Visible = true;
            btnUpdate.Visible = false;
            btnDelete.Visible = false;

            GetAll();
        }

    }
    private void GetAll()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        String query = "select country_id as id,country_name as Name,country_code as code from country order by country_id desc";
        SqlCommand cmd = new SqlCommand(query,con);
        cmd.CommandType = CommandType.Text;
        DataTable dt =new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        datagrid.DataSource = dt;
        datagrid.DataBind();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into country(country_name,country_code) values('"+txtcountryname.Text+"','"+Convert.ToInt32(txtcountrycode.Text)+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtcountryname.Text = "";
        txtcountrycode.Text = "";
        GetAll(); 
    }
    private DataTable GetById(int country_id)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "Select country_id,country_name,country_code from country where country_id = " + country_id;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.CommandType = CommandType.Text;
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        con.Close();
        return dt;
    }
    protected void grdView_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        int country_id = Convert.ToInt32(datagrid.DataKeys[e.NewSelectedIndex].Value);
        DataTable dt = GetById(country_id);
        if (dt != null && dt.Rows != null && dt.Rows.Count > 0)
        {
            btnSave.Visible = false;
            btnUpdate.Visible = true;
            btnDelete.Visible = true;
            txtcountrycode.Text = dt.Rows[0]["country_code"].ToString();
            txtcountryname.Text = dt.Rows[0]["country_name"].ToString();
            hdnId.Value = dt.Rows[0]["country_id"].ToString();
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        String query = "update country set country_name='"+txtcountryname.Text+"',country_code='"+Convert.ToInt32(txtcountrycode.Text)+"'where country_id ="+hdnId.Value;
        SqlCommand cmd = new SqlCommand(query,con);
        cmd.ExecuteNonQuery();
        con.Close();

        txtcountryname.Text = "";
        txtcountrycode.Text = "";
        hdnId.Value = "";
        btnSave.Visible = true;
        btnDelete.Visible = false;
        btnUpdate.Visible = false;
        GetAll();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        String query = "delete from country where country_id="+hdnId.Value;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        txtcountryname.Text = "";
        txtcountrycode.Text = "";
        hdnId.Value = "";

        btnSave.Visible = true;
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        GetAll();
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtcountryname.Text = "";
        txtcountrycode.Text = "";
        hdnId.Value = "";
        btnSave.Visible = true;
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        GetAll();
    }
}