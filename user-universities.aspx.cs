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
    public partial class user_universities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
            loadUni();
        }

        protected void deleteUni(object sender, GridViewDeleteEventArgs e)
        {
            myDAL objmyDAl = new myDAL();
            string userName = objmyDAl.getUserName(User.Identity.Name);
            objmyDAl.deleteUni(userName,Convert.ToInt32(universitiesGrid.DataKeys[e.RowIndex].Values[0]));
            DataTable DT = new DataTable();
           
            objmyDAl.loadUserUni(userName, ref DT);

            universitiesGrid.DataSource = DT;
            universitiesGrid.DataBind();
        }

        protected void loadUni()
        {
            myDAL objmyDAl = new myDAL();
            DataTable DT = new DataTable();
            string userName = objmyDAl.getUserName(User.Identity.Name);
            objmyDAl.loadUserUni(userName,ref DT);
            
            universitiesGrid.DataSource = DT;
            universitiesGrid.DataBind();

            
        }

        protected void universitiesGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.Cells.Count > 1)
                e.Row.Cells[1].Visible = false;
        }
    }
}