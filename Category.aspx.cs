using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Category : System.Web.UI.Page
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
        string query = "Select category_id as id,category_name as Name,category_description as description from category order by category_id desc";
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
        String query = "insert into category(category_name, category_description) values('" + txtCategoryname.Text + "', '" + txtCategoryDes.Text + "')";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtCategoryname.Text = "";
        txtCategoryDes.Text = "";
        GetAll();

    }
    private DataTable GetById(int category_id)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "Select category_id,category_name,category_description from category where category_id = " + category_id;
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
        int category_id = Convert.ToInt32(datagrid.DataKeys[e.NewSelectedIndex].Value);
        DataTable dt = GetById(category_id);
        if (dt != null && dt.Rows != null && dt.Rows.Count > 0)
        {
            btnSave.Visible = false;
            btnUpdate.Visible = true;
            btnDelete.Visible = true;
            txtCategoryDes.Text = dt.Rows[0]["category_description"].ToString();
            txtCategoryname.Text = dt.Rows[0]["category_name"].ToString();
            hdnId.Value = dt.Rows[0]["category_id"].ToString();

        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        String query = "update category set category_name='" + txtCategoryname.Text + "',category_description='" + txtCategoryDes.Text + "'where category_id =" + hdnId.Value;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        txtCategoryname.Text = "";
        txtCategoryDes.Text = "";
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
        String query = "delete from category where category_id=" + hdnId.Value;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        txtCategoryname.Text = "";
        txtCategoryDes.Text = "";
        hdnId.Value = "";

        btnSave.Visible = true;
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        GetAll();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtCategoryname.Text = "";
        txtCategoryDes.Text = "";
        hdnId.Value = "";
        btnSave.Visible = true;
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        GetAll();
    }
}