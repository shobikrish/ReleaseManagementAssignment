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
            int projid;
            while (!(Int32.TryParse(ProIDBox.Text, out projid)))
                Console.WriteLine("yui");

            string projname = ProjNameBox.Text;
            using(releasedbEntities db =new releasedbEntities())
            {
                db.S_InsertIntoProject_p(projid, projname);
                db.SaveChanges();
                ProjNameBox.Text = "";
                ProIDBox.Text = "";

            }

        }

        protected void ProIDBox_TextChanged(object sender, EventArgs e)
        {
        }
    }
}