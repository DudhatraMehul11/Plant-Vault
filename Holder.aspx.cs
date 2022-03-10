using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Holder : System.Web.UI.Page
{
    private int HolderId;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        con.Open();
        string query = "Select holder.holder_id as id,name,address,postal_code,office_no,extention_no,fax_no,website,contact_name,service_email_id,info_email_id,short_info from holder";
        SqlCommand cmd = new SqlCommand(query,con);
        cmd.CommandType = CommandType.Text;
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        con.Close();

        datagrid.DataSource = dt;
        datagrid.DataBind();
    }
}
