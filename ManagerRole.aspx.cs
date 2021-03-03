using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReleaseManagementAssignment
{
    public partial class ManagerRole : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Empid"] != null)
            {
                ManagerIdLabel.Text = Session["Empid"].ToString();
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
}