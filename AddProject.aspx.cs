using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReleaseManagementAssignment
{
    public partial class AddProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            

        }

        protected void ProIDBox_TextChanged(object sender, EventArgs e)
        {
        }

        protected void AddButton_Click1(object sender, EventArgs e)
        {
            int projid;
            while (!(Int32.TryParse(ProIDBox.Text, out projid)))
                MessageLabel.Text = "Enter the Project ID";
            string projname = ProjNameBox.Text;
            using (releasedbEntities1 db = new releasedbEntities1())
            {
                db.S_InsertIntoProject_p(projid, projname);
                db.SaveChanges();
                ProjNameBox.Text = "";
                ProIDBox.Text = "";
                MessageLabel.Text = "Project Added";
                
            }
        }

        protected void HomeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagerRole.aspx");
        }
    }
}