using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Holder : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["loginId"] == null)
        {
            Response.Redirect("Login.aspx", true);
        }
        else
        {
            if (Session["firstname"] != null && Session["lastname"] != null && Session["role"].ToString().ToLower() == CommonUtills.ROLE_HOLDER.ToLower())
            {
                lblTitle.Text = "Welcome  " + Session["firstname"];
            }
            else
            {
                Response.Redirect("Login.aspx", true);
            }
        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx", true);
    }
}
