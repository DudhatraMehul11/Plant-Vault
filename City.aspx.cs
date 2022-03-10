using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class City : System.Web.UI.Page    
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
        string query = "Select city_id as id,city_name as Name,city_code as code from city order by city_id desc";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.CommandType = CommandType.Text;
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        datagrid.DataSource = dt;
        datagrid.DataBind();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into city(city_name,city_code) values('" + txtCityname.Text + "','" + Convert.ToInt32(txtCitycode.Text) + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtCityname.Text = "";
        txtCitycode.Text = "";
        GetAll();
    }
    private DataTable GetById(int city_id)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "Select city_id,city_name,city_code from city where city_id = " + city_id;
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
        int city_id = Convert.ToInt32(datagrid.DataKeys[e.NewSelectedIndex].Value);
        DataTable dt = GetById(city_id);
        if (dt != null && dt.Rows != null && dt.Rows.Count > 0)
        {
            btnSave.Visible = false;
            btnUpdate.Visible = true;
            btnDelete.Visible = true;
            txtCitycode.Text = dt.Rows[0]["city_code"].ToString();
            txtCityname.Text = dt.Rows[0]["city_name"].ToString();
            hdnId.Value = dt.Rows[0]["city_id"].ToString();

        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "update city set city_name= '"+txtCityname.Text+"',city_code = '"+Convert.ToInt32(txtCitycode.Text)+"' where city_id = " + hdnId.Value;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        con.Close();

        txtCityname.Text = "";
        txtCitycode.Text = "";
        hdnId.Value = "";
        btnSave.Visible = true;
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        GetAll();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "Delete from  city where city_id = " + hdnId.Value;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        con.Close();

        txtCityname.Text = "";
        txtCitycode.Text = "";
        hdnId.Value = "";

        btnSave.Visible = true;
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        GetAll();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtCityname.Text = "";
        txtCitycode.Text = "";
        hdnId.Value = "";
        btnSave.Visible = true;
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        GetAll();
    }

    protected void datagrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        datagrid.PageIndex = e.NewPageIndex;
        GetAll();
    }
}