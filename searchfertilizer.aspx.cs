﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class searchfertilizer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getCategory();
        }

    }
    public void getCategory()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select category_id,category_name from category  where category_type = 1", cn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        cn.Close();
        GetProducts(Convert.ToInt32(dt.Rows[0][0]));
    }
    private void GetProducts(int category_id)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select fertilizer_id as FertilizerId,(cast(fertilizer_name as nvarchar(10))+ case when len(fertilizer_name) > 16 then '...' else '' end )as FertilizerName,price,image1,status_check from fertilizer where category_id in(" + category_id + ")AND status_check=1 Order by fertilizer_id desc", cn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        cn.Close();
        rptProducts.DataSource = dt;
        rptProducts.DataBind();
    }
  
}