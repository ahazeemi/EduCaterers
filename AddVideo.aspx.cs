using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DAL;

namespace WebApplication1
{
    public partial class AddVideo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

                LoadFieldDropDown();

        }

        public void LoadFieldDropDown()
        {

            DataTable a = new DataTable();
            myDAL objmyDAl = new myDAL();
            objmyDAl.fillField(ref a);
            fieldDropDown.DataSource = a;
            //Set the DataValueField of dropdownlist
            fieldDropDown.DataValueField = "Field_id";
            //Set the DataTextField of dropdownlist
            fieldDropDown.DataTextField = "Field_name";
            //Bind the dropdownlist
            fieldDropDown.DataBind();
            fieldDropDown.Items.Insert(0, "Select");

            fieldDropDown.SelectedIndex = 0;
        }

        protected void Add_Field(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();
            String Videoname = Video_Name.Text;
            String link_add = link.Text;
            int field_id = Convert.ToInt32(fieldDropDown.SelectedValue);
            int status = 0;
            DataTable DT = new DataTable();
            int found;
            found = objmyDAl.ADD_Preplink(Videoname, link_add, field_id, ref status);
            if (found != 1)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "error" + "');", true);
            }
            else
            {
                if (status == 0)
                { ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "Nope" + "');", true); }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "Done" + "');", true);
                }
            }
        }
    }
}