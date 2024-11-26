using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Ecommerce
{
    public partial class Feedback : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Send_Click(object sender, EventArgs e)
        {
            string sel = "insert into tbl_Feedback (User_RegId,Feedback_Msg,Status)values("+Session["userid"]+",'" + txtFeedback.Text + "',1) ";
            obj.Fn_ExeNonQuery(sel);
            lblmsg.Text = "Successfully Inserted!";
        }
    }
}