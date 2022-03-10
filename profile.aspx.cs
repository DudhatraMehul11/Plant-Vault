using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["loginId"] != null)
        {
            if (!IsPostBack)
            {
                GetCity();
                Getcountry();
                Getstate();
                int id = Convert.ToInt32(Session["loginId"].ToString());
                GetById(id);
            }
        }

    }
    private void GetById(int id)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "select holder_id, name, address, country_id, state_id, city_id, postal_code, office_no, extention_no, fax_no, website, contact_name, contactperson_mobileno, service_email_id, info_email_id, short_info from holder where login_id = " + id;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.CommandType = CommandType.Text;
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        con.Close();
        if (dt != null && dt.Rows != null && dt.Rows.Count > 0)
        {
            txtFirstName.Text = dt.Rows[0]["name"].ToString();
           
            txtPersonName.Text = dt.Rows[0]["contact_name"].ToString();
            txtContactNo.Text = dt.Rows[0]["contactperson_mobileno"].ToString();
            txtShortInfo.Text = dt.Rows[0]["short_info"].ToString();
            txtAddress.Text = dt.Rows[0]["address"].ToString();
            txtWebsite.Text = dt.Rows[0]["website"].ToString();
            txtServiceEmailId.Text = dt.Rows[0]["service_email_id"].ToString();
            txtInformation.Text = dt.Rows[0]["info_email_id"].ToString();
            txtOfficeNo.Text = dt.Rows[0]["office_no"].ToString();
            txtExtentionNo.Text = dt.Rows[0]["extention_no"].ToString();
            txtFaxNo.Text = dt.Rows[0]["fax_no"].ToString();
            txtPostalCode.Text = dt.Rows[0]["postal_code"].ToString();
            ddlCity.SelectedValue = dt.Rows[0]["city_id"].ToString();
            ddlCountry.SelectedValue = dt.Rows[0]["country_id"].ToString();
            ddlState.SelectedValue = dt.Rows[0]["state_id"].ToString();
        }
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
        Getstate();
        ddlCountry.Items.Insert(0, "--Select Country--");
    }
    public void Getstate()
    {
        
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select state_id,state_name from state where country_id = '" + ddlCountry.SelectedValue+"'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            ddlState.DataSource = dt;
            ddlState.DataTextField = "state_name";
            ddlState.DataValueField = "state_id";
            ddlState.DataBind();
            GetCity();
            ddlState.Items.Insert(0, "--Select State--");
    }
    public void GetCity()
    {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            con.Open();
            string query = "select city_id,city_name from city where state_id = '"+ddlState.SelectedValue+"'";
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
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "update holder set name=@name,address=@address,postal_code=@postal_code,office_no=@office_no,extention_no=@extention_no,fax_no=@fax_no,website=@website,contact_name=@contact_name,contactperson_mobileno=@contactperson_mobileno,service_email_id=@service_email_id,info_email_id=@info_email_id,short_info=@short_info,city_id=@city_id,state_id=@state_id,country_id=@country_id where login_id=" + Session["loginId"];
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@name", txtFirstName.Text);
        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@postal_code", txtPostalCode.Text);
        cmd.Parameters.AddWithValue("@office_no", txtOfficeNo.Text);
        cmd.Parameters.AddWithValue("@extention_no", txtExtentionNo.Text);
        cmd.Parameters.AddWithValue("@fax_no", txtFaxNo.Text);
        cmd.Parameters.AddWithValue("@website", txtWebsite.Text);
        cmd.Parameters.AddWithValue("@contact_name", txtPersonName.Text);
        cmd.Parameters.AddWithValue("@contactperson_mobileno", txtContactNo.Text);
        cmd.Parameters.AddWithValue("@service_email_id", txtServiceEmailId.Text);
        cmd.Parameters.AddWithValue("@info_email_id", txtInformation.Text);
        cmd.Parameters.AddWithValue("@short_info", txtShortInfo.Text);
        cmd.Parameters.AddWithValue("@city_id", ddlCity.SelectedValue);
        cmd.Parameters.AddWithValue("@state_id", ddlState.SelectedValue);
        cmd.Parameters.AddWithValue("@country_id", ddlCountry.SelectedValue);
        cmd.Parameters.AddWithValue("@login_id", Session["loginId"]);
        cmd.ExecuteNonQuery();
        con.Close();
        lblError.Text = "Profile Updated Succefull";
        lblError.ForeColor = System.Drawing.Color.Green;
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
        txtAddress.Text = "";

        GetCity();
        Getcountry();
        Getstate();
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