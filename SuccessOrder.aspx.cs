using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SuccessOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {    
            if (Session["UserId"] != null)
            {

                Random rnd = new Random();
                int orderNo = rnd.Next(1, 1000);

                //int itemId = Convert.ToInt32(data[1].ToString());
                //decimal price = Convert.ToDecimal(data[2].ToString());
                //int quantity = Convert.ToInt32(data[3].ToString());

                //string guidnew = Convert.ToString(Guid.NewGuid());
                //string ordeNo = "OD-" + guidnew.Substring(0, 8).ToUpper();
                var price = Session["price"];
                var quantity = Session["Quantity"];
                var regid = Session["regid"];
                var plantId = Session["plantId"];
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
                cn.Open();
                SqlCommand cmd = new SqlCommand("sp_insert_order", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@order_no", orderNo);
                cmd.Parameters.AddWithValue("@reg_id", regid);
                cmd.Parameters.AddWithValue("@Order_amount", price);
                cmd.Parameters.AddWithValue("@plant_Id", plantId);
                cmd.Parameters.AddWithValue("@quantity", quantity);
                cmd.ExecuteNonQuery();

                cn.Close();

                lblmsg.Text = "Your Order is confirmed.and order no is '" + orderNo + "'.";


            }

        }
        catch (Exception ex)
        {
            lblmsg.Text = " Your Order is canceled";
        }
    }
}