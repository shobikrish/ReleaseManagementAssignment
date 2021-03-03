using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReleaseManagementAssignment
{
    public partial class AssignProjectTeamLeads : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AssignButton_Click(object sender, EventArgs e)
        {
            int ProjectId = Convert.ToInt32(DropDownList3.SelectedValue);
            string ProjName = DropDownList1.SelectedValue;
            int Tid = Convert.ToInt32(DropDownList2.SelectedValue);
            using (releasedbEntities1 db = new releasedbEntities1())
            {
                db.S_AddTeamLeadtoProject_p(ProjectId, ProjName, Tid);
                db.SaveChanges();
                Label1.Text = "Team Lead ID is added";
            }
        }
    }
}