using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class plantholder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["role"] != null && Session["role"].ToString() != "" && (Session["role"].ToString() == CommonUtills.ROLE_ADMIN || Session["Role"].ToString() == CommonUtills.ROLE_HOLDER))
            {
                if (Session["registrationId"] != null)
                {
                    btnUpdate.Visible = false;
                    btnDelete.Visible = false;

                    getData();
                    getCategory();
                }
            }
            else
            {
                Response.Redirect("login.aspx", false);
            }
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
    public void getData()
    {
        int holder_id;
        if (Session["registrationId"] != null)
        {
            holder_id = Convert.ToInt32(Session["registrationId"].ToString());

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            cn.Open();
            string s = @"select plant_id,plant_name,p.category_id,c.category_name as category_name,status_check,price,image1
                        from ItemDetail p
                        inner join category c on p.category_id = c.category_id";

            StringBuilder sb = new StringBuilder();
            sb.AppendLine(s);
            sb.AppendFormat("where holder_id = {0}", holder_id);
            sb.Append(" order by plant_id desc");


            SqlCommand cmd = new SqlCommand(sb.ToString(), cn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cn.Close();
            grdPlant.DataSource = dt;
            grdPlant.DataBind();
        }
        else
        {
            Response.Redirect("login.aspx", false);
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (ddlCategory.SelectedValue != null)
            {
                string newFileName1 = null;
                string image1path = null;
                string image1Db = null;
                if (Image1FileUpload.HasFile)
                {
                    string fileName = Path.GetFileName(Image1FileUpload.PostedFile.FileName);
                    string fileExtension = Path.GetExtension(fileName);
                    newFileName1 = txtplantName.Text.Trim() + "_1_" + Guid.NewGuid() + fileExtension;
                    image1path = Server.MapPath("~/UploadPhoto/") + newFileName1;
                    image1Db = "UploadPhoto/" + newFileName1;
                    Image1FileUpload.PostedFile.SaveAs(image1path);
                }
            
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
                cn.Open();
                SqlCommand cmd = new SqlCommand("sp_insert_Item_Details", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@category_id", (ddlCategory.SelectedValue == "") ? null : ddlCategory.SelectedValue);
                cmd.Parameters.AddWithValue("@plant_name", txtplantName.Text.Trim());
                cmd.Parameters.AddWithValue("@description", txtDescription.Text.Trim());
                cmd.Parameters.AddWithValue("@care_info", txtCareInfo.Text.Trim());
                cmd.Parameters.AddWithValue("@plantation_info", txtPlantationInfo.Text.Trim());
                cmd.Parameters.AddWithValue("@price", txtPrice.Text.Trim());
                cmd.Parameters.AddWithValue("@status_check", (ddlStatus.SelectedValue == "") ? null : ddlStatus.SelectedValue);
                cmd.Parameters.AddWithValue("@holder_id", Session["registrationId"]);
                cmd.Parameters.AddWithValue("@image1", image1Db);
                
                cmd.ExecuteNonQuery();
                cn.Close();

                getData();

                Response.Write("<script>alert('Data is inserted.')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message.ToString() + "')</script>");
        }

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            string newFileName1 = null;
            string image1path = null;
            string image1Db = null;
            if (Image1FileUpload.HasFile)
            {
                string fileName = Path.GetFileName(Image1FileUpload.PostedFile.FileName);
                string fileExtension = Path.GetExtension(fileName);
                newFileName1 = txtplantName.Text.Trim() + "_1_" + Guid.NewGuid() + fileExtension;
                image1path = Server.MapPath("~/UploadPhoto/") + newFileName1;
                image1Db = "UploadPhoto/" + newFileName1;
                Image1FileUpload.PostedFile.SaveAs(image1path);
            }
           

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            cn.Open();
            SqlCommand cmd = new SqlCommand("sp_update_Item_Details", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@plant_id", hdnfertilizer_id.Value.Trim());
            cmd.Parameters.AddWithValue("@category_id", (ddlCategory.SelectedValue == "") ? null : ddlCategory.SelectedValue);
            cmd.Parameters.AddWithValue("@plant_name", txtplantName.Text.Trim());
            cmd.Parameters.AddWithValue("@Description", txtDescription.Text.Trim());
            cmd.Parameters.AddWithValue("@care_info", txtCareInfo.Text.Trim());
            cmd.Parameters.AddWithValue("@plantation_info", txtPlantationInfo.Text.Trim());
            cmd.Parameters.AddWithValue("@price", txtPrice.Text.Trim());
            cmd.Parameters.AddWithValue("@Status_check", (ddlStatus.SelectedValue == "") ? null : ddlStatus.SelectedValue);
            cmd.Parameters.AddWithValue("@holder_id", Session["registrationId"]);
            cmd.Parameters.AddWithValue("@image1", image1Db);

            cmd.ExecuteNonQuery();
            cn.Close();

            getData();

            ClearALL();
            Response.Write("<script>alert('Successfully,Data is updated.')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message.ToString() + "')</script>");
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            cn.Open();
            string query = "delete from ItemDetail where plant_id = " + hdnfertilizer_id.Value;
            SqlCommand cmd = new SqlCommand(query, cn);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            cn.Close();
            getData();

            ClearALL();
            Response.Write("<script>alert('Successfully,Data is deleted.')</script>");
        }
        catch (Exception ex)
        {
            ClearALL();
            Response.Write("<script>alert('" + ex.Message.ToString() + "')</script>");
        }
    }
    protected void grdPlant_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdPlant.PageIndex = e.NewPageIndex;
        getData();

        ClearALL();
    }

    protected void grdPlant_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnSave.Visible = false;
        btnUpdate.Visible = true;
        btnDelete.Visible = true;

        GridViewRow row = grdPlant.SelectedRow;
        hdnfertilizer_id.Value = grdPlant.SelectedDataKey.Value.ToString();

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cn.Open();
        string s = @"select plant_id,plant_name ,p.category_id ,description,care_info,plantation_info, status_check,price from ItemDetail p where plant_id = " + hdnfertilizer_id.Value;
        SqlCommand cmd = new SqlCommand(s, cn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        cn.Close();
        if (dt != null && dt.Rows.Count > 0)
        {
            txtplantName.Text = dt.Rows[0]["plant_name"].ToString();
            txtPrice.Text = dt.Rows[0]["price"].ToString();
            txtDescription.Text = dt.Rows[0]["description"].ToString();
            txtCareInfo.Text = dt.Rows[0]["care_info"].ToString();
            txtPlantationInfo.Text = dt.Rows[0]["plantation_info"].ToString();
            ddlCategory.SelectedValue = dt.Rows[0]["Category_Id"].ToString();
            ddlStatus.SelectedValue = dt.Rows[0]["status_check"].ToString();
        }
        else
        {
            Response.Write("<script>alert('Data not found.')</script>");
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ClearALL();
    }
    private void ClearALL()
    {
        txtplantName.Text = "";
        txtDescription.Text = "";
        txtCareInfo.Text = "";
        txtPlantationInfo.Text = "";
        txtPrice.Text = "";
        hdnfertilizer_id.Value = null;
        ddlCategory.SelectedIndex = -1;
        ddlStatus.SelectedIndex = -1;
        lblError.Text = "";
        btnSave.Visible = true;
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
    }

}

 