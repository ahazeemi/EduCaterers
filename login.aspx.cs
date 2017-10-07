using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DAL;
namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                Response.Redirect("myPortal.aspx");
            }
        }
        protected void Login(object sender, EventArgs e)
        {
            int userId = 0;
            myDAL objmyDAl = new myDAL();
            userId = objmyDAl.LoginUser(Login2.UserName, Login2.Password);
            switch (userId)
            {
                case 0:
                    
                    break;
                default:
                    FormsAuthentication.RedirectFromLoginPage(Login2.UserName, true);
                    break;
            }

        }
    }
}