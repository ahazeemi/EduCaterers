using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DAL;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Load the first dropdownlist
                LoadDropDown();
                LoadField();
            }
            searchOnLoad();
        }

        protected void searchOnLoad() //called when search is to be made through dropdowns/filters
        {
            myDAL objmyDAl = new myDAL();
            DataTable DT = new DataTable();
            int found;
            found = objmyDAl.searchByRanking( ref DT);
            if (found != 1)
            {
                Message.Text = "There was an error";
            }
            else
            {
                SearchResultGrid.DataSource = DT;
                SearchResultGrid.DataBind();

            }
        }

        protected void gridOnLoad() //called when search is to be made through dropdowns/filters
        {
            myDAL objmyDAl = new myDAL();
            String country = null, city = null, type = null, field = null;
            DataTable DT = new DataTable();
            int found;
            found = objmyDAl.searchUniViaDropDown(country, city, type, field, ref DT);
            if (found != 1)
            {
                Message.Text = "There was an error";
            }
            else
            {
                SearchResultGrid.DataSource = DT;
                SearchResultGrid.DataBind();

            }
        }

        //This method is used to load the first dropdownlist
        public void LoadDropDown()
        {
            
            DataTable a=new DataTable();
            myDAL objmyDAl = new myDAL();
            objmyDAl.fillCountry(ref a);
            DropDownList1.DataSource = a;
            //Set the DataValueField of dropdownlist
            DropDownList1.DataValueField = "State";
 
            //Bind the dropdownlist
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Select Country");

            DropDownList1.SelectedIndex = 0;
            
        }

        public void LoadField()
        {

            DataTable a = new DataTable();
            myDAL objmyDAl = new myDAL();
            objmyDAl.fillField(ref a);
            dField.DataSource = a;
            //Set the DataValueField of dropdownlist
            dField.DataValueField = "Field_name";
            dField.DataTextField = "Field_name";
            //Bind the dropdownlist
            dField.DataBind();

            dField.Items.Insert(0, "Select Subject");

            dField.SelectedIndex = 0;
        }

     

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            DataTable a = new DataTable();
            myDAL objmyDAl = new myDAL();
            objmyDAl.dropdown1IndexChanged(DropDownList1.SelectedItem.Text, ref a);
             //Assign the values to dropdownlist
            DropDownList2.DataSource = a;
            //Set the DataValueField of dropdownlist
            DropDownList2.DataValueField = "City";
          
            //Bind the dropdownlist
            DropDownList2.DataBind();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();
            String InputName = Name.Text;
            DataTable DT = new DataTable();
            int found;
            found = objmyDAl.searchUni(InputName, ref DT);
            if (found != 1)
            {
                Message.Text = "There was an error";
            }
            else
            {
                SearchResultGrid.DataSource = DT;
                SearchResultGrid.DataBind();
                
                
            }
            uniAdded.Visible = false;
        }

        protected void showAlert(object sender, GridViewRowEventArgs e)
        {
            if (!Page.User.Identity.IsAuthenticated)
            {
                e.Row.Cells[0].Visible = false;
                notLoggedIn.Visible = true;
            }
            else { notLoggedIn.Visible = false ; }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Get the value in the hyperlink column.
                string HyperLinkValue = e.Row.Cells[7].Text;
                HyperLink myLink = new HyperLink();
                myLink.NavigateUrl = HyperLinkValue;
                myLink.Text = HyperLinkValue;
                // then add the control to the cell.
                e.Row.Cells[7].Controls.Add(myLink);
            }
            

        }

        protected void dropDownSearch(object sender, EventArgs e) //called when search is to be made through dropdowns/filters
        {
            myDAL objmyDAl = new myDAL();
            String country = DropDownList1.Text,city=DropDownList2.Text,type=Type.Text,field=dField.Text;
            DataTable DT = new DataTable();
            int found;
            found = objmyDAl.searchUniViaDropDown(country, city, type, field, ref DT);
            if (found != 1)
            {
                Message.Text = "There was an error";
            }
            else
            {
                SearchResultGrid.DataSource = DT;
                SearchResultGrid.DataBind();

            }
            uniAdded.Visible = false;
        }

        public void LoadModalDropDown()
        {

            DataTable a = new DataTable();
            myDAL objmyDAl = new myDAL();
            objmyDAl.fillFieldModal(Convert.ToInt32(SearchResultGrid.SelectedRow.Cells[1].Text), ref a);
            field3.DataSource = a;
            //Set the DataValueField of dropdownlist
            field3.DataValueField = "Field_id";
            field3.DataTextField = "Field_name";
            //Bind the dropdownlist
            field3.DataBind();
            field3.Items.Insert(0, "Select Field");

            field3.SelectedIndex = 0;

        }

        protected void SearchResultGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            string uni_id = SearchResultGrid.SelectedRow.Cells[1].Text;
            string uni_name = SearchResultGrid.SelectedRow.Cells[2].Text;
            uniName.Text = uni_name;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            LoadModalDropDown();
        }

        protected void fieldIndexChanged(object sender, EventArgs e)
        {
            if (field3.SelectedIndex != 0)
            {
                DataTable a = new DataTable();
                myDAL objmyDAl = new myDAL();
                objmyDAl.fieldIndexChanged_DAL( field3.SelectedItem.Value, Convert.ToInt32(SearchResultGrid.SelectedRow.Cells[1].Text), ref a);
                //Assign the values to dropdownlist
                academicLevel.DataSource = a;
                //Set the DataValueField of dropdownlist
                academicLevel.DataValueField = "PO_id";
                academicLevel.DataTextField = "type";
                //Bind the dropdownlist
                academicLevel.DataBind();
                academicLevel.Items.Insert(0, "Select");
                academicLevel.SelectedIndex = 0;

            }
        }

        protected void typeIndexChanged(object sender, EventArgs e)
        {
            if (academicLevel.SelectedIndex != 0)
            {
                DataTable a = new DataTable();
                myDAL objmyDAl = new myDAL();
                objmyDAl.typeIndexChanged_DAL(academicLevel.SelectedItem.Value, ref a);
                //Assign the values to dropdownlist
                dateDropDown.DataSource = a;
                //Set the DataValueField of dropdownlist
                dateDropDown.DataTextField = "test_date";
                dateDropDown.DataValueField = "entry_id";

                //Bind the dropdownlist
                dateDropDown.DataBind();
                dateDropDown.Items.Insert(0, "Select");
               dateDropDown.SelectedIndex = 0;

            }
        }

        protected void addUniv(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();
            String entryId = dateDropDown.SelectedItem.Value;
            DataTable DT = new DataTable();
            string userName = objmyDAl.getUserName(User.Identity.Name);
            int isAdded=objmyDAl.addToUserUni(entryId,userName);

            if(isAdded==1)
            {
                uniAdded.Visible = true;
                uniAdded.CssClass = "alert alert-success";
                uniAdded.Text = "University Added Successfully!";
            }
            else
            {
                uniAdded.Visible = true;
                uniAdded.CssClass = "alert alert-danger";
                uniAdded.Text = "This Entry Test Already Exists in Your Profile!";
            }
        }
    }
}