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
    public partial class ViewBill : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "select tbl_Bill.Id,tbl_Bill.SubTotal,tbl_Bill.Date ,tbl_UserReg.User_RegId,tbl_UserReg.User_Name from tbl_Bill  join  tbl_UserReg on tbl_Bill.User_RegId=tbl_UserReg.User_RegId where tbl_Bill.Status='Ordered' and tbl_Bill.User_RegId="+Session["userid"]+" ";
            SqlDataReader dr = obj.Fn_ExeReader(str);
                while (dr.Read())
                {
                    lblInv.Text = " " + "INV000" + dr["Id"].ToString();
                    lblCust.Text = " " + dr["User_Name"].ToString();
                    lblDate.Text = " " + Convert.ToDateTime(dr["Date"]).ToString("dd / MM/yyyy");
                    Total.Text = "₹" + dr["SubTotal"].ToString();
                }
                Gridview_Bind();  
        }
        public void Gridview_Bind()
        {
            string str1 = "select tbl_Product.P_Id,tbl_Product.P_Name,tbl_Product.P_Price ,tbl_Order.Order_Id,tbl_Order.Quantity,tbl_Order.SubTotal from tbl_Product join  tbl_Order on tbl_Product.P_Id = tbl_Order.P_Id and User_RegId = " + Session["userid"] + " and tbl_Order.Order_Status='Ordered'";
            DataSet ds = obj.Fn_ExeAdapter(str1);
            GridView1.DataSource = ds;
            GridView1.DataBind();   
        }

        protected void Btn_Payment_Click(object sender, EventArgs e)
        {
            string sel = "Select SubTotal From tbl_Bill where User_RegId='"+ Session["userid"] + "'";
            string subtotal=obj.Fn_ExeScalar(sel);
            Session["SubTotal"] = subtotal;
            Response.Redirect("AddAccount.aspx");
        }
       
    }

         
}