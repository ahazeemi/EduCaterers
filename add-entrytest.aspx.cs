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
    public partial class add_entrytest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {

                FormsAuthentication.RedirectToLoginPage();
            }
            if (!IsPostBack)
            {

                //Load the first dropdownlist
                LoadDropDown();
               
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

            DropDownList1.Items.Insert(0, "Select University");

            DropDownList1.SelectedIndex = 0;

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
                DropDownList2.Items.Insert(0, "Select City");

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

                uniDropDown.Items.Insert(0, "Select University");

                uniDropDown.SelectedIndex = 0;
            }
        }


        protected void uniIndexChanged(object sender, EventArgs e)
        {
            if (uniDropDown.SelectedIndex != 0)
            {
                DataTable a = new DataTable();
                myDAL objmyDAl = new myDAL();
                objmyDAl.fillFieldModal(Convert.ToInt32(uniDropDown.SelectedItem.Value), ref a);
                //Assign the values to dropdownlist
                fieldDropDown.DataSource = a;
                //Set the DataValueField of dropdownlist
                fieldDropDown.DataValueField = "Field_id";
                //Set the DataTextField of dropdownlist
                fieldDropDown.DataTextField = "Field_name";
                //Bind the dropdownlist
                fieldDropDown.DataBind();

                fieldDropDown.Items.Insert(0, "Select Field");

                fieldDropDown.SelectedIndex = 0;

            }
        }

        protected void fieldDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (fieldDropDown.SelectedIndex != 0)
            {
                DataTable a = new DataTable();
                myDAL objmyDAl = new myDAL();
                objmyDAl.fieldIndexChanged_DAL(fieldDropDown.SelectedItem.Value, Convert.ToInt32(uniDropDown.SelectedItem.Value), ref a);
                //Assign the values to dropdownlist
                ddType.DataSource = a;
                //Set the DataValueField of dropdownlist
                ddType.DataValueField = "PO_id";
                //Set the DataTextField of dropdownlist
                ddType.DataTextField = "type";
                //Bind the dropdownlist
                ddType.DataBind();

               ddType.Items.Insert(0, "Select Type");

                ddType.SelectedIndex = 0;

            }
        }
        



        protected void addEntryTest_Click(object sender, EventArgs e)
        {
            if (ddType.SelectedIndex != 0)
            {
                DataTable a = new DataTable();
                myDAL objmyDAl = new myDAL();
                string time = hr.Text + ":" +  min.Text + ":00 "+ ddlAmPm.SelectedItem.Text;
                int status = objmyDAl.AddEntryTestDal(Convert.ToInt32(ddType.SelectedItem.Value),testType.SelectedItem.Text,Calendar2.SelectedDate.ToString("yyyyMMdd"), Calendar1.SelectedDate.ToString("yyyyMMdd"),time,link.Text);
                //Assign the values to dropdownlist
                alertE.Visible = true;
                if(status==1)
                {
                    alertE.Text = "Entry Test Added Successfully";
                    alertE.CssClass = "alert alert-success";
                }
                else
                {
                    alertE.Text = "Entry Test already Exists";
                    alertE.CssClass = "alert alert-danger";
                }
            }
        }

       
    }
}