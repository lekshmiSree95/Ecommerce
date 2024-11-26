using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Login1 : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        
        
        {

        }

        protected void Btn_Login_Click(object sender, EventArgs e)
        {
            string str = "select count(Reg_Id) from tbl_login where UserName='" + txtUserName.Text + "' and password='" + txtPassword.Text + "'";
            string cid = obj.Fn_ExeScalar(str);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string str1 = "Select Reg_Id from tbl_login where UserName='" + txtUserName.Text + "' and Password='" + txtPassword.Text + "'";
                string regid = obj.Fn_ExeScalar(str1);
                Session["userid"] = regid;

                string str2 = "Select LogType from tbl_login where UserName='" + txtUserName.Text + "' and Password='" + txtPassword.Text + "'";
                string LogType = obj.Fn_ExeScalar(str2);
                if (LogType == "Admin")
                {
                    Response.Redirect("AdminHome.aspx");
                }
                else if (LogType == "User")
                {
                    Response.Redirect("UserHome.aspx");
                }
            }
            else
            {
                lblmsg.Text = "Invalid Login";
            }
        }
    }
    
}