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
    public partial class Chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void get_chat()
        {
            myDAL objmyDAl = new myDAL();
            String userName = objmyDAl.getUserName(User.Identity.Name);
            String InputName = userName;
            DataTable DT = new DataTable();
            int found;
            string msg = ""; String msg1; int is_ad; string Name;
            found = objmyDAl.get_chat(InputName, ref DT);
            if (found == 1)
            {
                foreach (DataRow Record in DT.Rows)
                {
                    Name = Record[0].ToString();
                    is_ad = Convert.ToInt32(Record[1].ToString());
                    msg1 = Record[2].ToString();
                    if (is_ad == 0)
                    {
                        msg = msg + Name + "  :" + " " + msg1 + "\r\n";
                    }

                    else
                    {
                        msg = msg + "Admin" + "  :" + " " + msg1 + "\r\n";
                    }


                }

                txtmsg.Text = msg;

            }


            else
            {

            }
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "textBoxScroll();", true);

        }

        protected void Unnamed1_Tick(object sender, EventArgs e)
        {
            get_chat();
        }

        protected void Send(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();
            String userName = objmyDAl.getUserName(User.Identity.Name);
            String ms = msg.Text;
            DataTable DT = new DataTable();
            int found;
            found = objmyDAl.Send_Msg(userName, 0, ms);
            if (found != 1)
            {

            }
            else
            {
                get_chat();
            }
            msg.Text = "";
        }
    }
}