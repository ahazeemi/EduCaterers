using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using WebApplication1.DAL;
using System.IO;

namespace WebApplication1
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {

                FormsAuthentication.RedirectToLoginPage();
            }
            if(!IsPostBack)
            LoadDropDown();
        }

        protected void Add_Uni_Click(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();
            String uniName = Name.Text;
            String city = City.Text;
            String State = Country.Text;
            int HecRank = Convert.ToInt32(hecRank.Text);
            int WorldR = Convert.ToInt32(worldrank.Text);
            String link = link1.Text;
            String FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            String path = "img/universities/" + FileName;
            int status = 0;

            //Save files to disk
            FileUpload1.SaveAs(Server.MapPath("img/universities/" + FileName));

            int found;
            found = objmyDAl.ADD_uni_DAL(uniName, city, State, HecRank, WorldR, link, path, ref status);
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


        protected void delUni_Click(object sender, EventArgs e)
        {
            DataTable a = new DataTable();
            myDAL objmyDAl = new myDAL();
            objmyDAl.delUni(uniDropDown.SelectedItem.Value);
            LoadDropDown();
        }
    }
}