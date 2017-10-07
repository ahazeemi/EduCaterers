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
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                Response.Redirect("myPortal.aspx");
            }
        }

        protected void RegisterUser(object sender, EventArgs e)
        {

            myDAL objmyDAl = new myDAL();
            String inUser_name = txtUsername.Text;
            String in_name = Name.Text;
            String password = txtPassword.Text;
            String email = txtEmail.Text;
            String curr_edu = Curr_edu.Text;
            String phone = Phone.Text;
            int status = 0;
            //DataTable DT = new DataTable();
            int found;
            //found = objmyDAl.SearchStudentByName_DAL(InputName, ref DT);
            found = objmyDAl.SignUp_Dal(inUser_name, in_name, email, password, curr_edu, phone, ref status);
            if (found != 1)
            {
                Message.Text = "There was some error";
            }
            else
            {
                Message.Text = "Perfect";
                if (status == 0)
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "Was unable to complete the request" + "');", true);
                }

                else if (status == 1)
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + "Registered Successfully!" + "');", true);
                }

            }
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();
            if (!string.IsNullOrEmpty(txtUsername.Text))
            {
                bool userId=objmyDAl.isUsernameAvailable(txtUsername.Text);
                if(userId)
                {
                    cross.Visible = false;
                    tick.Visible = true;
                   
                    av.Text = "Username is Available.";
                    av.ForeColor = System.Drawing.Color.Turquoise;
                }
                else
                {
                    tick.Visible = false ;
                    cross.Visible = true; ;
                    av.Text = "Username is Not Available.";
                    av.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                tick.Visible = false;
                cross.Visible = false;
                av.Text = "Required";
                av.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}