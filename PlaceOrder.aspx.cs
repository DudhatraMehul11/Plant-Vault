using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPlaceHolder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string productId = Request.QueryString["id"].ToString();
            if (productId != null || productId != "")
            {
                GetProductNameDetails(Convert.ToInt32(productId));
                GetAllCategory();
            }
            else
                Response.Redirect("index.aspx", false);

        }
    }
    private void GetProductNameDetails(int productId)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select plant_id as PlantId,plant_name as PlantName,description,care_info,plantation_info,price,image1,image2,category_id,holder_id from ItemDetail where plant_id =" + productId, cn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        cn.Close();
        if (dt != null && dt.Rows.Count > 0)
        {

            lblProductName.Text = dt.Rows[0]["PlantName"].ToString();
            lblPrice.Text = dt.Rows[0]["price"].ToString();
            images1.ImageUrl = dt.Rows[0]["image1"].ToString();
            images2.ImageUrl = dt.Rows[0]["image2"].ToString();
            lblDescription.InnerText = dt.Rows[0]["description"].ToString();
            lblCareInfo.Text = dt.Rows[0]["care_info"].ToString();
            lblPlantationInfo.Text = dt.Rows[0]["plantation_info"].ToString();
            hdnProductId.Value = dt.Rows[0]["PlantId"].ToString();
            Session["plantId"]= dt.Rows[0]["PlantId"].ToString();

            int categoryId = Convert.ToInt32(dt.Rows[0]["category_id"].ToString());
            GetCategotyWiseRelatedProduct(categoryId);

            int holderId = Convert.ToInt32(dt.Rows[0]["holder_id"].ToString());
            GetHolderDetails(holderId);
        }
    }
    public void GetAllCategory()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select category_id,category_name from category", cn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        cn.Close();
        //rptCategories.DataSource = dt;
        //rptCategories.DataBind();
    }
    private void GetCategotyWiseRelatedProduct(int categoryId)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select top 4 plant_id as PlantId,(cast(plant_name as nvarchar(20))+ case when len(plant_name) > 16 then '...' else '' end ) as PlantName,price,image1,image2,category_id from ItemDetail where category_id = " + categoryId + " order by plant_id desc ;", cn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        cn.Close();
        rptProducts.DataSource = dt;
        rptProducts.DataBind();
    }

    private void GetHolderDetails(int holderId)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("get_HolderDetails_By_Id", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@holderId", holderId);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        cn.Close();
        if (dt != null && dt.Rows.Count > 0)
        {
            lblHDName.Text = (dt.Rows[0]["Name"].ToString() != null) ? "Name : " + dt.Rows[0]["Name"].ToString() : null;
            lblHDShortInfo.Text = (dt.Rows[0]["Short_Info"].ToString() != null) ? "Short Info : " + dt.Rows[0]["Short_Info"].ToString() : null;
            lblHDOfficeNo.Text = (dt.Rows[0]["Office_No"].ToString() != null) ? "Office No : " + dt.Rows[0]["Office_No"].ToString() : null;

            lblHDFaxNo.Text = (dt.Rows[0]["Fax_No"].ToString() != null) ? "Fax No : " + dt.Rows[0]["Fax_No"].ToString() : null;
            lblHDWebsite.Text = (dt.Rows[0]["Website"].ToString() != null) ? "Website : " + dt.Rows[0]["Website"].ToString() : null;
            lblHDAddress.Text = (dt.Rows[0]["Address"].ToString() != null) ? "Address : " + dt.Rows[0]["Address"].ToString() : null;

            lblHDServiceEmailId.Text = (dt.Rows[0]["service_email_id"].ToString() != null) ? "Servic Email Id : " + dt.Rows[0]["service_email_id"].ToString() : null;
            lblHDInfoEMailId.Text = (dt.Rows[0]["info_email_id"].ToString() != null) ? "Info Email Id : " + dt.Rows[0]["info_email_id"].ToString() : null;
            lblHDPerson.Text = (dt.Rows[0]["Contact_Name"].ToString() != null) ? "Person : " + dt.Rows[0]["Contact_Name"].ToString() : null;
        }
    }

    protected void txtQuntity_TextChanged(object sender, EventArgs e)
    {
        if (txtQuntity.Text != null)
        {
            decimal? mainPrice = Convert.ToDecimal(lblPrice.Text);
            int? quantiy = Convert.ToInt32(txtQuntity.Text);
            lblFinalPrice.Text = Convert.ToString(((mainPrice != null) ? mainPrice : 0) * ((quantiy != null) ? quantiy : 0));
        }
    }

    protected void btnPlaceOrder_Click(object sender, EventArgs e)
    {
        Session["regid"] = Session["userId"];
        Session["price"] = lblFinalPrice.Text;
        Session["Quantity"] = txtQuntity.Text;
        Response.Redirect("SuccessOrder.aspx", false);
    }
}