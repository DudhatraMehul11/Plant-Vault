using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class plantadmin : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("select category_id,category_name from category  where category_type = 0", cn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        cn.Close();
        ddlCategory.DataSource = dt;
        ddlCategory.DataTextField = "category_name";
        ddlCategory.DataValueField = "category_id";
        ddlCategory.DataBind();
        ddlCategory.Items.Insert(0, "--Select Category--");
    }
    private void GetProducts(int category_id)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select plant_id as PlantId,(cast(plant_name as nvarchar(10))+ case when len(plant_name) > 16 then '...' else '' end )as PlantName,price,image1,status_check from ItemDetail where category_id in(" + category_id + ")AND status_check=1 Order by plant_id desc", cn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        cn.Close();
        rptProducts.DataSource = dt;
        rptProducts.DataBind();

    }
    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCategory.SelectedIndex != 0)
        {
            GetProducts(Convert.ToInt32(ddlCategory.SelectedValue));
        }
        else
        {
            DataTable dt = new DataTable();
            rptProducts.DataSource = dt;
            rptProducts.DataBind();
        }
    }
}