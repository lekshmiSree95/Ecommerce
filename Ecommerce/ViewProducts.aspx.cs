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
    public partial class ViewProducts : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            ddl_Bind();
            if (!IsPostBack)
            {
                
                string str = "select * from tbl_Product where P_Id='"+Session["pid"]+"' ";
                SqlDataReader dr = obj.Fn_ExeReader(str);
                int stock = 0;
                while (dr.Read())
                {
                    lblName.Text = dr["P_Name"].ToString();
                    lblDes.Text = dr["P_Description"].ToString();
                    lblPrice.Text = dr["P_Price"].ToString();
                    Image1.ImageUrl = dr["P_Image"].ToString();
                    stock = Convert.ToInt32(dr["P_Stock"].ToString());
                    Session["stock"] = dr["P_Stock"].ToString();

                    if (stock != 0 && stock >= 10)
                    {
                        lblStock.ForeColor = Color.Green;
                        lblStock.Text = "In Stock";
                    }
                    else if (stock != 0 && stock < 10)
                    {
                        lblStock.ForeColor = Color.Pink;
                        lblStock.Text = "Hurry Up!!Few Items Available";
                    }
                    else
                    {
                        lblStock.ForeColor = Color.Red;
                        lblStock.Text = "Out of Stock";
                    }
                }


            }
        }
        public void ddl_Bind()
        {
            for (int i = 1; i <= 20; i++)
            {
                ddlQuantity.Items.Add(i.ToString());
                
            }
            ddlQuantity.Items.Insert(0, "--Select--");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string sel = "select max(cart_Id) from tbl_Cart";
            string cartid = obj.Fn_ExeScalar(sel);

            int cart_id = 0;
            if (cartid == "")
            {
                cart_id = 1;
            }
            else
            {
                int newcartid = Convert.ToInt32(cartid);
                cart_id = newcartid + 1;
            }
           
            int stock = Convert.ToInt32(Session["stock"]);
            if(ddlQuantity.SelectedItem.Text=="--Select--")
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = "Please Select Quantity..!";
            }
            else if (Convert.ToInt32(ddlQuantity.SelectedItem.Text) <= stock)
            {
               
                string str = "Insert into tbl_Cart values(" + cart_id + "," + Session["userid"] + "," + Session["pid"] + "," + ddlQuantity.SelectedItem.Text + "," + Session["subtotal"] + ")";
                int i = obj.Fn_ExeNonQuery(str);
                if (i == 1)
                {
                    lblmsg.ForeColor = Color.Green;
                    lblmsg.Text = "Added to cart Successfully";
                }
            }
            else
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = "Sorry! Insufficient Stock";
            }
            
            
           
            
        }

        protected void ddlQuantity_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblmsg.Text = "";
            int subtotal = Convert.ToInt32(ddlQuantity.SelectedItem.Text) * Convert.ToInt32(lblPrice.Text);
            Session["subtotal"] = subtotal;
            lblAmount.Text = Session["subtotal"].ToString();
           
        }

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("UserHome.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ViewCart.aspx");
        }
    }
}