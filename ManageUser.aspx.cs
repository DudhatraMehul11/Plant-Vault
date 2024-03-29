﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "select registration_id as id, first_name, middle_name, last_name, email_id, mobile_no, phone_no, gender, birth_date, postal_code, address,state_name,country_name from registration inner join state on registration.state_id=state.state_id inner join country on registration.country_id=country.country_id where login_id !=1";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.CommandType = CommandType.Text;
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        con.Close();

        datagrid.DataSource = dt;
        datagrid.DataBind();
    }
}