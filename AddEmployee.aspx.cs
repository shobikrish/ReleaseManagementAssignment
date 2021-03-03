using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReleaseManagementAssignment
{
    public partial class AddEmployee1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            int EmpId = Convert.ToInt32(EmpIDBox.Text);
            string EmpName = EmpNameBox.Text;
            string Erole = DropDownList1.SelectedValue;
            using (releasedbEntities1 db = new releasedbEntities1())
            {
                db.S_AddEmployee_p(EmpId, EmpName,Erole);
                db.SaveChanges();
                MessageLabel.Text = "Employee is added";
            }
        }
    }
}