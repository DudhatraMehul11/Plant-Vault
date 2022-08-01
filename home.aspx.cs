using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //GetAllCategory();
            GetProducts();
        }
    }
    //public void GetAllCategory()
    //{
    //    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["NurseryConnection"].ConnectionString);
    //    cn.Open();
    //    SqlCommand cmd = new SqlCommand("select top 12 Category_Id,category_name from Category order by  NEWID()", cn);
    //    //SqlCommand cmd = new SqlCommand("select Category_Id,category_name from Category order by )", cn);
    //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
    //    DataTable dt = new DataTable();
    //    sda.Fill(dt);
    //    cn.Close();
    //    rptCategories.DataSource = dt;
    //    rptCategories.DataBind();
    //}
    private void GetProducts()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select top 12 plant_id as PlantId,(cast(plant_name as nvarchar(20))+ case when len(plant_name) > 16 then '...' else '' end )as PlantName,price,image1 from ItemDetail where status_check = 'true' Order by plant_id desc", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Close();
        rptProducts.DataSource = dt;
        rptProducts.DataBind();
    }
}