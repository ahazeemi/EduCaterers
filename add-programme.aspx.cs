using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using WebApplication1.DAL;
namespace WebApplication1
{
    public partial class addProgramme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                //Load the first dropdownlist
                LoadDropDown();
                LoadFieldDropDown();
            }
        }
        //This method is used to load the first dropdownlist
        public void LoadDropDown()      //Used to load the country names 
        {

            DataTable a = new DataTable();
            myDAL objmyDAl = new myDAL();
            objmyDAl.fillCountry(ref a);
            DropDownList1.DataSource = a;
            //Set the DataValueField of dropdownlist
            DropDownList1.DataValueField = "State";
            //Set the DataTextField of dropdownlist
            DropDownList1.DataTextField = "State";
            //Bind the dropdownlist
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Select Country");

            DropDownList1.SelectedIndex = 0;
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



        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex != 0)
            {
                DataTable a = new DataTable();
                myDAL objmyDAl = new myDAL();
                objmyDAl.dropdown1IndexChanged(DropDownList1.SelectedItem.Text, ref a);
                //Assign the values to dropdownlist
                DropDownList2.DataSource = a;
                //Set the DataValueField of dropdownlist
                DropDownList2.DataValueField = "City";
                //Set the DataTextField of dropdownlist
                DropDownList2.DataTextField = "City";
                //Bind the dropdownlist
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "Select");

                DropDownList2.SelectedIndex = 0;
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedIndex != 0)
            {
                DataTable a = new DataTable();
                myDAL objmyDAl = new myDAL();
                objmyDAl.dropdown2IndexChanged(DropDownList1.SelectedItem.Text, DropDownList2.SelectedItem.Text, ref a);
                //Assign the values to dropdownlist
                uniDropDown.DataSource = a;
                //Set the DataValueField of dropdownlist
                uniDropDown.DataValueField = "Uni_id";
                //Set the DataTextField of dropdownlist
                uniDropDown.DataTextField = "Uni_name";
                //Bind the dropdownlist
                uniDropDown.DataBind();
                //fieldDropDown.Items.Insert(0, "Select");
                // fieldDropDown.SelectedIndex = 0;

            }
        }
        protected void addpro_Click(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();
            int uni_id = Convert.ToInt32(uniDropDown.SelectedItem.Value);
            int field_id = Convert.ToInt32(fieldDropDown.SelectedItem.Value);
            String Type = ddType.SelectedItem.Value;
            int status = 0;

            int found;

            found = objmyDAl.AddProgramme_DAL(uni_id, field_id, Type, ref status);
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
        }


    }
}