using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HolderRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        if (!IsPostBack)
        {

            Getcountry();
            Getstate();
            GetCity();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("sp_holder", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@name", txtFirstName.Text);
        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@postal_code", txtPostalCode.Text);
        cmd.Parameters.AddWithValue("@office_no", txtOfficeNo.Text);
        cmd.Parameters.AddWithValue("@extention_no", txtExtentionNo.Text);
        cmd.Parameters.AddWithValue("@fax_no", txtFaxNo.Text);
        cmd.Parameters.AddWithValue("@website", txtWebsite.Text);
        cmd.Parameters.AddWithValue("@contact_name", txtPersonName.Text);
        cmd.Parameters.AddWithValue("@service_email_id", txtServiceEmailId.Text);
        cmd.Parameters.AddWithValue("@info_email_id", txtInformation.Text);
        cmd.Parameters.AddWithValue("@short_info", txtShortInfo.Text);
        cmd.Parameters.AddWithValue("@password", txtPassword.Text);
        cmd.Parameters.AddWithValue("@city_id", ddlCity.SelectedValue);
        cmd.Parameters.AddWithValue("@state_id", ddlState.SelectedValue);
        cmd.Parameters.AddWithValue("@country_id",ddlCountry.SelectedValue);

        cmd.ExecuteNonQuery();
        con.Close();

        txtFirstName.Text = "";
        txtPersonName.Text = "";
        txtPostalCode.Text = "";
        txtOfficeNo.Text = "";
        txtExtentionNo.Text = "";
        txtFaxNo.Text = "";
        txtWebsite.Text = "";
        txtContactNo.Text = "";
        txtServiceEmailId.Text = "";
        txtInformation.Text = "";
        txtShortInfo.Text = "";
        txtPassword.Text = "";
        txtlocation.Text = "";
        txtAddress.Text = "";
        ddlCity.SelectedValue = "";
        ddlState.SelectedValue = "";
        ddlCountry.SelectedValue = "";

    }
    public void Getcountry()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select country_id,country_name from country", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Close();
        ddlCountry.DataSource = dt;
        ddlCountry.DataTextField = "country_name";
        ddlCountry.DataValueField = "country_id";
        ddlCountry.DataBind();
        ddlCountry.Items.Insert(0, "--Select Country--");
    }
    public void Getstate()
    {
        if (ddlCountry.SelectedValue != null && ddlCountry.SelectedValue != "" && ddlCountry.SelectedIndex != 0)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select state_id,state_name from state where country_id = " + ddlCountry.SelectedValue, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            ddlState.DataSource = dt;
            ddlState.DataTextField = "state_name";
            ddlState.DataValueField = "state_id";
            ddlState.DataBind();
            ddlState.Items.Insert(0, "--Select State--");
        }
        else
        {
            DataTable dt = new DataTable();
            ddlState.DataSource = dt;
            ddlState.DataBind();
            ddlState.Items.Insert(0, "--Select State--");
        }
    }
    public void GetCity()
    {
        if (ddlCountry.SelectedIndex != 0 && ddlState.SelectedIndex != 0)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            con.Open();
            string query = "select city_id,city_name from city where state_id = " + ddlState.SelectedValue;
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            ddlCity.DataSource = dt;
            ddlCity.DataTextField = "city_name";
            ddlCity.DataValueField = "city_id";
            ddlCity.DataBind();
            ddlCity.Items.Insert(0, "--Select City--");
        }
        else
        {
            DataTable dt = new DataTable();
            ddlCity.DataSource = dt;
            ddlCity.DataBind();
            ddlCity.Items.Insert(0, "--Select City--");
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = "";
        txtPersonName.Text = "";
        txtPostalCode.Text = "";
        txtOfficeNo.Text = "";
        txtExtentionNo.Text = "";
        txtFaxNo.Text = "";
        txtWebsite.Text = "";
        txtContactNo.Text = "";
        txtServiceEmailId.Text = "";
        txtInformation.Text = "";
        txtShortInfo.Text = "";
        txtPassword.Text = "";
        txtlocation.Text = "";
        txtAddress.Text = "";
        ddlCity.SelectedValue = "";
        ddlState.SelectedValue = "";
        ddlCountry.SelectedValue = "";
        hdnId.Value = "";
    }

    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        Getstate();
    }

    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetCity();
    }
}