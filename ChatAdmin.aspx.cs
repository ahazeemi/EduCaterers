using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DAL;

namespace WebApplication1
{
    public partial class ChatAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
               
            }
            else
            {
                myDAL objmyDAl = new myDAL();
                string userName = User.Identity.Name;
                if(!objmyDAl.isAdmin(userName))
                {
                    FormsAuthentication.RedirectToLoginPage();
                }
            }
            loadUsers();
        }

        protected void loadUsers()
        {
            myDAL objmyDAl = new myDAL();
            DataTable DT = new DataTable();

            objmyDAl.usersChatsWithAdmin(ref DT);

            usersGrid.DataSource = DT;
            usersGrid.DataBind();


        }

        private void btnSubmit_Click(object sender, System.EventArgs e)
        {
           
        }

        protected void usersGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("ChatAdminUser.aspx?UserName=" + usersGrid.SelectedRow.Cells[1].Text);
            
        }
    }
}