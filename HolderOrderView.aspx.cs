using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserOder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["registrationId"] != null && Session["registrationId"].ToString() != "")
        {
            if (!IsPostBack)
            {
                int regId = Convert.ToInt32(Session["registrationId"].ToString());
                GetUserOrderDetails(regId);
            }
        }
        else
        {
            Response.Redirect("login.aspx", false);
        }
    }
    private void GetUserOrderDetails(int holderId)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        cn.Open();

        string query = "EXEC sp_get_orders_by_holder @holderId = " + holderId;

        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        cn.Close();
        grdOrder.DataSource = dt;
        grdOrder.DataBind();
    }
}