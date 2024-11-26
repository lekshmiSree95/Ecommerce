using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace Ecommerce
{
    public partial class ViewCart : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Gridview_bind();
            }
        }
        public void Gridview_bind()
        {
            string str = "select tbl_Product.P_Id,tbl_Product.P_Image,tbl_Product.P_Name,tbl_Product.P_Price,tbl_Cart.Cart_Id,tbl_Cart.Quantity,tbl_Cart.SubTotal from tbl_Product inner join tbl_Cart on tbl_Product.P_Id=tbl_cart.P_Id and tbl_cart.User_RegId=" + Session["userid"] +" ";
            DataSet ds = obj.Fn_ExeAdapter(str);
            if (ds.Tables[0].Rows.Count != 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                ImageButton1.Visible = false;
                lblmsg.ForeColor = Color.Maroon;
                lblmsg.Text = "Your cart is empty";
            }  
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Gridview_bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            lblmsg.Visible = false;
            Gridview_bind(); 
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string str = "select P_Price from tbl_Product where P_Id = "+getid+"";
            string result = obj.Fn_ExeScalar(str);
            Session["Price"]= result;
            
            TextBox txtqty = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];
            int subtotal = Convert.ToInt32(txtqty.Text)*Convert.ToInt32(Session["price"]);
            int stock = Convert.ToInt32(Session["stock"]);
            if (Convert.ToInt32(txtqty.Text)<=stock)
            {
                string updt = "Update tbl_Cart set Quantity = " + txtqty.Text + "," +
                    "SubTotal = " + subtotal + " where p_Id = " + getid + " ";
                obj.Fn_ExeNonQuery(updt);
                GridView1.EditIndex = -1;
                Gridview_bind();
            }
            else
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text="Sorry Out of Stock ";
            }
        }
        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            string str = "select cart_id from tbl_Cart where " +
                "User_RegId=" + Session["userid"] + "";
            List<int> list = new List<int>();
            SqlDataReader dr = obj.Fn_ExeReader(str);
            while (dr.Read())
            {
                list.Add(Convert.ToInt32(dr["cart_Id"]));
            }
            foreach (int i in list)
            {
                string str1 = "select * from tbl_Cart  where cart_id=" + i + " and" +
                    " User_RegId=" + Session["userid"] + " ";
                SqlDataReader dr1 = obj.Fn_ExeReader(str1);
                int pid = 0;
                int quantity = 0;
                int total = 0;
                while (dr1.Read())
                {
                    pid = Convert.ToInt32(dr1["P_Id"]);
                    quantity = Convert.ToInt32(dr1["Quantity"]);
                    total = Convert.ToInt32(dr1["SubTotal"]);
                }

                string strins = "insert into tbl_Order values(" + pid + "," +
                    "" + Session["userid"] + "," + quantity + "," + total + "," +
                    "'Ordered','" + DateTime.Now.ToString("yyyy/MM/dd") + "')";
                obj.Fn_ExeNonQuery(strins);
                string strdel = "delete from tbl_Cart where P_Id=" + pid + " and " +
                    "user_RegId=" + Session["userid"] + " ";
                int del = obj.Fn_ExeNonQuery(strdel);
            }
            string str2 = "select Sum(SubTotal)as SubTotal from tbl_Order " +
                "where Order_Status='Ordered'";
            int subtotal = Convert.ToInt32(obj.Fn_ExeScalar(str2));
            string ins = "insert into tbl_Bill values(" + Session["userid"] + "," +
                "" + subtotal + ",'" + DateTime.Now.ToString("yyyy/MM/dd") + "','Ordered')";
            obj.Fn_ExeNonQuery(ins);
            Response.Redirect("ViewBill.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string delstr = "delete from tbl_Cart where P_Id=" + getid + "";
            obj.Fn_ExeNonQuery(delstr);
            Gridview_bind();
        }
    }
}