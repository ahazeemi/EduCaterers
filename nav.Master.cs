using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;
using WebApplication1.DAL;

namespace WebApplication1
{
    public partial class nav : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (!Page.User.Identity.IsAuthenticated)
                {
                    loginIcon1.InnerHtml = "<a href = \"login.aspx\" > Login </ a >";
                    loginIcon2.InnerHtml = "<a href = \"login.aspx\" > Login </ a >";
                }
                else
                {
                    loginIcon1.InnerHtml = "<a class=\"clickIcon\" href=\"#top\"> <i class=\"fa fa-user fa-2x \"></i> </a>";
                    loginIcon2.InnerHtml = "<a class=\"clickIcon\" > <i class=\"fa fa-user fa-2x\"></i> </a>";
                    userName.Text = Page.User.Identity.Name;
                }

            }
            /**/
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
    }
}