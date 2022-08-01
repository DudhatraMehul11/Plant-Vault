using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string productId = Request.QueryString["productId"].ToString();
            if (productId != null || productId != "")
            {
                GetProductNameDetails(Convert.ToInt32(productId));
            }
            else
                Response.Redirect("Home.aspx", false);

        }
    }

    private void GetProductNameDetails(int productId)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select fertilizer_id as FertilizerId,fertilizer_name as FertilizerName,description,fertilizer_info,chemical_info,price,image1,category_id,holder_id from fertilizer where fertilizer_id =" + productId, cn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        cn.Close();
        if (dt != null && dt.Rows.Count > 0)
        {
            lblProductName.Text = dt.Rows[0]["FertilizerName"].ToString();
            lblPrice.Text = dt.Rows[0]["price"].ToString();
            images1.ImageUrl = dt.Rows[0]["image1"].ToString();
            lblDescription.InnerText = dt.Rows[0]["description"].ToString();
            lblCareInfo.Text = dt.Rows[0]["fertilizer_info"].ToString();
            lblPlantationInfo.Text = dt.Rows[0]["chemical_info"].ToString();
            hdnProductId.Value = dt.Rows[0]["FertilizerId"].ToString();
            int categoryId = Convert.ToInt32(dt.Rows[0]["category_id"].ToString());
            GetCategotyWiseRelatedProduct(categoryId);
            int holderId = Convert.ToInt32(dt.Rows[0]["holder_id"].ToString());
            GetHolderDetails(holderId);
        }
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
            lblHDName.Text = (dt.Rows[0]["name"].ToString() != null) ? "Name : " + dt.Rows[0]["name"].ToString() : null;
            lblHDShortInfo.Text = (dt.Rows[0]["short_info"].ToString() != null) ? "Short Info : " + dt.Rows[0]["short_info"].ToString() : null;
            lblHDOfficeNo.Text = (dt.Rows[0]["office_no"].ToString() != null) ? "Office No : " + dt.Rows[0]["office_no"].ToString() : null;

            lblHDFaxNo.Text = (dt.Rows[0]["fax_no"].ToString() != null) ? "Fax No : " + dt.Rows[0]["fax_no"].ToString() : null;
            lblHDWebsite.Text = (dt.Rows[0]["website"].ToString() != null) ? "Website : " + dt.Rows[0]["website"].ToString() : null;
            lblHDAddress.Text = (dt.Rows[0]["address"].ToString() != null) ? "Address : " + dt.Rows[0]["address"].ToString() : null;

            lblHDServiceEmailId.Text = (dt.Rows[0]["service_email_id"].ToString() != null) ? "Servic Email Id : " + dt.Rows[0]["service_email_id"].ToString() : null;
            lblHDInfoEMailId.Text = (dt.Rows[0]["info_email_id"].ToString() != null) ? "Info Email Id : " + dt.Rows[0]["info_email_id"].ToString() : null;
            lblHDPerson.Text = (dt.Rows[0]["contact_name"].ToString() != null) ? "Person : " + dt.Rows[0]["contact_name"].ToString() : null;
        }
    }
    private void GetCategotyWiseRelatedProduct(int categoryId)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select top 4 fertilizer_id as FertilizerId,(cast(fertilizer_name as nvarchar(10))+ case when len(fertilizer_name) > 16 then '...' else '' end )as FertilizerName,price,image1,status_check from fertilizer where category_id in(" + categoryId + ")AND status_check=1 Order by fertilizer_id desc", cn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        cn.Close();
        rptProducts.DataSource = dt;
        rptProducts.DataBind();
    }

}