using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DAL;
using System.Data;
namespace WebApplication1
{
    public partial class Prepare : System.Web.UI.Page
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

        protected void FieldDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (fieldDropDown.SelectedIndex != 0)
            {
                DataTable a = new DataTable();
                myDAL objmyDAl = new myDAL();
                objmyDAl.fillPrep_Link(Convert.ToInt32(fieldDropDown.SelectedValue), ref a);
                //Assign the values to dropdownlist
                Load_Video.DataSource = a;
                //Set the DataValueField of dropdownlist
                Load_Video.DataValueField = "link_id";
                //Set the DataTextField of dropdownlist
                Load_Video.DataTextField = "Video_Name";
                //Bind the dropdownlist
                Load_Video.DataBind();
                Load_Video.Items.Insert(0, "Select");
                Load_Video.SelectedIndex = 0;

            }
        }
        protected void Play_Video(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();
            String link = "";
            int link_id = Convert.ToInt32(Load_Video.SelectedValue);

            int found;
            found = objmyDAl.get_video(link_id, ref link);
            if (found != 1)
            {

            }
            else
            {
                videoplay.InnerHtml = link;
            }
        }
    }
}