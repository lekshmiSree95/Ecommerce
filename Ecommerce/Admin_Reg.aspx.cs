using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce
{
    public partial class Admin_Reg : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Register_Click(object sender, EventArgs e)
        {
            string sel = "select max(Reg_Id) from tbl_login";
            string regid = obj.Fn_ExeScalar(sel);

            int reg_id = 0;
            if (regid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(regid);
                reg_id = newregid + 1;
            }
            string ins = "Insert into tbl_AdminReg values(" + reg_id + ",'" + txtName.Text + "','" + txtAddress.Text + "','" + txtPhone.Text + "','" + txtEmail.Text + "')";
            int i = obj.Fn_ExeNonQuery(ins);
            if (i == 1)
            {
                string inslog = "insert into tbl_login values(" + reg_id + ",'" + txtUserName.Text + "','" + txtPassword.Text + "','Admin','Active')";
                int j = obj.Fn_ExeNonQuery(inslog);
                if (j == 1)
                {
                    lblmsg.Text = "Successfully Registered";
                }
                else
                {
                    lblmsg.Text = "Registeration Failed";
                }

            }
        }
    }
}
