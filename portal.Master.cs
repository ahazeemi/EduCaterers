using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DAL;
using System.Web.Security;
using System.Data;

namespace WebApplication1
{
    public partial class portal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.User.Identity.IsAuthenticated)
                FormsAuthentication.RedirectToLoginPage();

            string userName = Page.User.Identity.Name;
            myDAL objmydal = new myDAL();
            if(objmydal.isAdmin(userName))
            {
                hide.Visible = true;
                loadNotifications();
            }
            else
            {
                hide.Visible = false;
            }
            
        }

        protected void logout(object sender, EventArgs e)
        {
            int userId = 0;
            myDAL objmyDAl = new myDAL();
            userId = objmyDAl.logout_user(Page.User.Identity.Name);
            switch (userId)
            {
                
                default:
                    FormsAuthentication.SignOut();
                    Response.Redirect("home.aspx");
                    break;
            }

        }

        protected void loadNotifications()
        {
            
                myDAL objmyDAl = new myDAL();
                DataTable DT = new DataTable();

                objmyDAl.chatNotification(ref DT);
                
                notificationRepeat.DataSource = DT;
                notificationRepeat.DataBind();
                notificationCount.InnerHtml = DT.Rows.Count.ToString();

            
        }
    }
}