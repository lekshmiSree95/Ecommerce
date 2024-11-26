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
    public partial class View_Orders : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            gridbind();
        }
        
        public void gridbind()
         {
            string sel = "select tbl_UserReg.User_Name,tbl_Bill.Status   from tbl_UserReg join tbl_Bill  on tbl_UserReg.User_RegId=tbl_Bill.User_RegId  where tbl_Bill.Status='Paid'";
            DataSet ds = obj.Fn_ExeAdapter(sel);
            if (ds.Tables[0].Rows.Count != 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                Btn_Update.Visible = false;
                lblmsg.Text = "All Orders  are Delivered..!!";
            }

         }

        protected void Btn_Update_Click(object sender, EventArgs e)
        {
            string sel = "update tbl_Bill set Status='Delivered' where Status='Paid'";
            obj.Fn_ExeNonQuery(sel);
            lblmsg.Text = "Updated Successfully!";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
}