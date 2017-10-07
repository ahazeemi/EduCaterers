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

  

    public partial class myPortal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                
                FormsAuthentication.RedirectToLoginPage();
            }
            else
            {
                myDAL obj = new myDAL();
                if(obj.isAdmin(User.Identity.Name))
                {
                   
                  /*  // 2.
                    // If we don't have the data yet, initialize it.
                    if (important1 == null)
                    {
                        // Example code.
                        important1 = User.Identity.Name;
                        Global.ImportantData = important1;
                    }*/
                    
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    ab.InnerText = User.Identity.Name;
                    myDAL objmyDAl = new myDAL();
                    string userName = objmyDAl.getUserName(User.Identity.Name);
                    load_repeater();
                }
                
               
            }
        }

        public void load_repeater()
        {
            myDAL objmyDAl = new myDAL();
            String InputName = objmyDAl.getUserName(User.Identity.Name);
            DataTable DT = new DataTable();
            int found;
            found = objmyDAl.GetDeadline(InputName, ref DT);
            if (found != 1)
            {
                Repeater1.DataSource = null;
                Repeater1.DataBind();
               
            }
            else
            {
                Repeater1.DataSource = DT;
                Repeater1.DataBind();
                GridView.DataSource = DT;
                GridView.DataBind();
            }
        }
    }
}