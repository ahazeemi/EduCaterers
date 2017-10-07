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
    public partial class addField : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {

                FormsAuthentication.RedirectToLoginPage();
            }
        }

        protected void addfield_Click(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();
            String field_Name = fieldName.Text;
            String Field_init = fieldInitial.Text;
            int status = 0;

            int found;
            found = objmyDAl.AddField_DAL(field_Name, Field_init, ref status);
            if (found != 1)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "error" + "');", true);
            }
            else
            {
                if (status == 0)
                { ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "NOPe" + "');", true); }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "Done" + "');", true);
                }
            }
            Page_Load(sender, e);
        }
    }
}