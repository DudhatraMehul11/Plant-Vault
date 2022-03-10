using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userprofile : System.Web.UI.Page
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

                lblError.Text = "";
            }
        }
    }
    private void GetById(int id)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "select registration_id,first_name,middle_name,last_name,mobile_no,birth_date,gender,address,city_id,state_id,country_id from registration where login_id = " + id;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.CommandType = CommandType.Text;
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        con.Close();

        if (dt != null && dt.Rows != null && dt.Rows.Count > 0)
        {
            txtFirstName.Text = dt.Rows[0]["first_name"].ToString();

            txtMiddleName.Text = dt.Rows[0]["middle_name"].ToString();
            txtLastName.Text = dt.Rows[0]["last_name"].ToString();
            txtphone.Text = dt.Rows[0]["mobile_no"].ToString();
            string date = dt.Rows[0]["birth_date"].ToString();
            if (date != null && date != "")
            {
                DateTime dtObj = Convert.ToDateTime(date);
                txtBirthDate.Text = dtObj.Date.ToString("yyyy-MM-dd");
            }
            ddlGender.SelectedValue = dt.Rows[0]["gender"].ToString();
            txtAddress.Text = dt.Rows[0]["address"].ToString();
            txtAddress.Text = dt.Rows[0]["address"].ToString();
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
        SqlCommand cmd = new SqlCommand("select state_id,state_name from state where country_id = '" + ddlCountry.SelectedValue + "'", con);
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
        string query = "select city_id,city_name from city where state_id = '" + ddlState.SelectedValue + "'";
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

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = "";
        txtMiddleName.Text = "";
        txtLastName.Text = "";
        txtphone.Text = "";
        ddlGender.SelectedValue = "";
        txtBirthDate.Text = "";
        txtAddress.Text = "";
        ddlCity.SelectedValue = "";
        ddlCountry.SelectedValue = "";
        ddlState.SelectedValue = "";
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "update registration set first_name=@first_name,middle_name=@middle_name,last_name=@last_name,phone_no=@phone_no,gender=@gender,birth_date=@birth_date,address=@address,city_id=@city_id,country_id=@country_id,state_id=@state_id where login_id=" + Session["loginId"];
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@first_name", txtFirstName.Text);
        cmd.Parameters.AddWithValue("@middle_name", txtMiddleName.Text);
        cmd.Parameters.AddWithValue("@last_name", txtLastName.Text);
        cmd.Parameters.AddWithValue("@phone_no", txtphone.Text);
        cmd.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
        cmd.Parameters.AddWithValue("@birth_date", txtBirthDate.Text);
        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@city_id", ddlCity.SelectedValue);
        cmd.Parameters.AddWithValue("@state_id", ddlState.SelectedValue);
        cmd.Parameters.AddWithValue("@country_id", ddlCountry.SelectedValue);
        cmd.Parameters.AddWithValue("@login_id", Session["loginId"]);
        cmd.ExecuteNonQuery();
        con.Close();

        lblError.Text = "Profile Updated Succefull";
        lblError.ForeColor = System.Drawing.Color.Green;
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