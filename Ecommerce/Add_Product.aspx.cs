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
    public partial class Add_Product : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddlCategory_bind();
            }
           
            
        }

        protected void Btn_Insert_Click(object sender, EventArgs e)
        {
            string image = "~/images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(image));
            string str = "Insert into tbl_Product values(" +ddlCatId.SelectedItem.Value + ",'" + txtName.Text + "'," + txtPrice.Text + ",'" + image + "','" + txtDes.Text + "'," + txtStock.Text + ",'" + RdbtnStatus.SelectedItem.Text + "')";
            int i = obj.Fn_ExeNonQuery(str);
            Session["uid"] = i;
            if(i==1)
            {
               
                lblmsg.Text = "Successfully Inserted";
               
            }
        }
        
        public void ddlCategory_bind()
        {
            string str = "Select * from tbl_Category";
            DataSet ds = obj.Fn_ExeAdapter(str);
            ddlCatId.DataSource = ds;
            ddlCatId.DataTextField = "Cat_Name";
            ddlCatId.DataValueField = "Cat_Id";
            ddlCatId.DataBind();
            ddlCatId.Items.Insert(0,"--Select--");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditProduct.aspx");
        }
    }
}