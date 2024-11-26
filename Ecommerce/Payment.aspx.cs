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
    public partial class Payment : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "select sum(SubTotal) from tbl_Bill where User_RegId=" + Session["userid"] + " and  Status='Ordered' ";
            string total = obj.Fn_ExeScalar(str);
            lblTotal.Text = total;
                
        }

        protected void Btn_Pay_Click(object sender, EventArgs e)
        {
            string sel = "select  Acc_No from tbl_Account where User_RegId="+Session["userid"]+"";
            string accno = obj.Fn_ExeScalar(sel);
            if (txtAccountNo.Text == accno)
            {
                ServicePayment.ServiceClient objservice = new ServicePayment.ServiceClient();
                string balance = objservice.Check_Balance(txtAccountNo.Text);
                int Subtotal=0;
                int newbalance = 0;
                 Subtotal = Convert.ToInt32(Session["SubTotal"]);
                if (Convert.ToInt32(balance) >= Subtotal)
                {
                    newbalance = Convert.ToInt32(balance) - Subtotal;
                    string updbalamt = "Update tbl_Account set Bal_Amt = " + newbalance + " where Acc_No=" + txtAccountNo.Text + " and User_RegId=" + Session["userid"] + " ";
                    obj.Fn_ExeNonQuery(updbalamt);


                    string updorderstatus = "Update tbl_Order set Order_Status='Paid' where User_RegId=" + Session["userid"] + "";
                    obj.Fn_ExeNonQuery(updorderstatus);


                    string updbillstatus = "Update tbl_Bill set Status='Paid' where User_RegId=" + Session["userid"] + "";
                    obj.Fn_ExeNonQuery(updbillstatus);

                   
                   
                    string str = "select distinct tbl_Order.P_Id,tbl_Bill.Status from tbl_Order join tbl_Bill on tbl_Bill.User_RegId = tbl_Bill.User_RegId where tbl_order.User_RegId=" + Session["userid"] + " and tbl_Bill.Status='Paid'";
                    List<int> list = new List<int>();
                    SqlDataReader dr = obj.Fn_ExeReader(str);
                    while (dr.Read())
                    {
                        list.Add(Convert.ToInt32(dr["P_Id"]));
                    }
                    foreach (int i in list)
                    {
                        string selstck = "select tbl_Product.P_Stock,tbl_Order.Quantity from tbl_Product join tbl_Order on tbl_Product.P_Id=tbl_Order.P_Id where tbl_Order.P_Id=" + i + " and User_RegId=" + Session["userid"] + " ";
                        SqlDataReader dr1 = obj.Fn_ExeReader(selstck);
                        int stock = 0;
                        int quantity = 0;
                    while(dr1.Read())
                        {
                            stock = Convert.ToInt32(dr1["P_Stock"]);
                            quantity = Convert.ToInt32(dr1["Quantity"]);
                        }
                        int newstock = stock - quantity;
                        string newprdstock = newstock.ToString();
                        string updtstck = "update tbl_Product set P_Stock= " + newprdstock + " where P_Id=" + i + "";
                        int updatestock = obj.Fn_ExeNonQuery(updtstck);

                        if(updatestock==1)
                        {
                            lblmsg.ForeColor = Color.Maroon;
                            lblmsg.Text = "Payment  Successfull";
                            lblmsg0.ForeColor = Color.Green;
                            lblmsg0.Text = "Your Order has been Placed Successfully";
                        }
                    }
                }
                else
                {
                    string updtbillstatus = "update tbl_Bill set status='Failed' where User_RegId=" + Session["userid"] + "";                     obj.Fn_ExeNonQuery(updtbillstatus);
                    lblmsg.Text = "Insufficient Balance";
                }
            }
            else
            {
                Response.Redirect("AddAccount.aspx");
                
            }
        }
    }
}