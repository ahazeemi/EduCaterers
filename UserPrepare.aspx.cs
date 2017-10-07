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
    public partial class UserPrepare : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
            loadResources();
        }


        protected void loadResources()
        {
            myDAL objmyDAl = new myDAL();
            DataTable DT = new DataTable();
            string userName = objmyDAl.getUserName(User.Identity.Name);
            objmyDAl.loadUserResources(userName, ref DT);

            prepareGrid.DataSource = DT;
            prepareGrid.DataBind();


        }

        protected void prepareGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Get the value in the hyperlink column.
                string HyperLinkValue = e.Row.Cells[2].Text;
                HyperLink myLink = new HyperLink();
                myLink.NavigateUrl = HyperLinkValue;
                myLink.Text = HyperLinkValue;
                // then add the control to the cell.
                e.Row.Cells[2].Controls.Add(myLink);
            }
        }
    }
}

