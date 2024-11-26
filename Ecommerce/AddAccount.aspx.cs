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
    public partial class AddAccount : System.Web.UI.Page
    {
 
        ConCls obj = new ConCls();
        ConnectionClass obj1 = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Add_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_AccountInsert";
            //Input parameters
            cmd.Parameters.AddWithValue("@accno", txtAccountNo.Text);
            cmd.Parameters.AddWithValue("@acctype", ddlAccType.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@balamt", txtBalAmt.Text);
            cmd.Parameters.AddWithValue("@userregid", Session["userid"]);
            //output parameters
            SqlParameter sp = new SqlParameter();
            sp.DbType = DbType.Int32;
            sp.ParameterName = "@status";
            sp.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(sp);
            obj1.Fn_ExeNonQuery(cmd);
            int outputval = Convert.ToInt32(sp.Value);

            if (outputval == 1)
            {
                lblmsg.Text = "Account Added";
            }
            else
            {
                lblmsg.Text = "Account Adding Failed";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}
    
