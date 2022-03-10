using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class State : System.Web.UI.Page
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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString());
        con.Open();
        string query = "Select state_id as id,state_name as Name,state_code as code from state order by state_id desc";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.CommandType = CommandType.Text;
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        con.Close();
        datagrid.DataSource = dt;
        datagrid.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into state(state_name,state_code) values('" + txtStatename.Text + "','" + txtStatecode.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();

        txtStatename.Text = "";
        txtStatecode.Text = "";
        GetAll();

    }

    private DataTable GetById(int state_id)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "Select state_id,state_name,state_code from state where state_id = " + state_id;
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
        int state_id = Convert.ToInt32(datagrid.DataKeys[e.NewSelectedIndex].Value);
        DataTable dt = GetById(state_id);
        if (dt != null && dt.Rows != null && dt.Rows.Count > 0)
        {
            btnSave.Visible = false;
            btnUpdate.Visible = true;
            btnDelete.Visible = true;
            txtStatecode.Text = dt.Rows[0]["state_code"].ToString();
            txtStatename.Text = dt.Rows[0]["state_name"].ToString();
            txtStatename.Text = dt.Rows[0]["state_name"].ToString();
            hdnId.Value = dt.Rows[0]["state_id"].ToString();

        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "update state set state_name= '" + txtStatename.Text + "',state_code = '" + Convert.ToInt32(txtStatecode.Text) + "' where state_id = " + hdnId.Value;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        con.Close();

        txtStatename.Text = "";
        txtStatecode.Text = "";
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
        string query = "Delete from  state where state_id = " + hdnId.Value;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        con.Close();

        txtStatename.Text = "";
        txtStatecode.Text = "";
        hdnId.Value = "";

        btnSave.Visible = true;
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        GetAll();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtStatename.Text = "";
        txtStatecode.Text = "";
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