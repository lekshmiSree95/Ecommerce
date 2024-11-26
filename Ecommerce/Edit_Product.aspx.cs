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
    public partial class Edit_Product : System.Web.UI.Page
    {
        ConCls obj = new ConCls();

        protected void Page_Load(object sender, EventArgs e)
        {
            Gridview_bind();
            ddl_bind();
        }
        public void Gridview_bind()
        {
            string str = "Select  * from tbl_Product ";
            DataSet ds = obj.Fn_ExeAdapter(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        public void ddl_bind()
        {
            string str = "Select * from tbl_category";
            DataSet ds = obj.Fn_ExeAdapter(str);
            ddlCatId.DataSource = ds;
            ddlCatId.DataTextField = "Cat_Name";
            ddlCatId.DataValueField = "Cat_Id";
            ddlCatId.DataBind();
            ddlCatId.Items.Insert(0,"--Select--");
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int i = e.NewSelectedIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            Session["pid"] = getid;
            string str = "select  tbl_Product.P_Name,tbl_Product.P_Price,tbl_Product.P_Image,tbl_Product.P_Description,tbl_Product.P_Stock,tbl_Product.P_Status,tbl_Category.Cat_Name from tbl_Product join tbl_Category on  tbl_Product.Cat_Id=tbl_category.Cat_Id where P_Id=" + getid + "";
            SqlDataReader dr = obj.Fn_ExeReader(str);
            while (dr.Read())
            {
                ddlCatId.SelectedItem.Text = dr["Cat_Name"].ToString();
                txtName.Text = dr["P_Name"].ToString();
                txtPrice.Text = dr["P_Price"].ToString();
                txtStock.Text = dr["P_Stock"].ToString();
                txtImagePath.Text = dr["P_Image"].ToString();
                txtDes.Text = dr["P_Description"].ToString();
                RdbtnStatus.SelectedValue = dr["P_Status"].ToString();

            }

        }

        protected void Btn_Update_Click(object sender, EventArgs e)
        {
            string imagepath;
            if (FileUpload1.HasFile)
            {
                imagepath = "~/images/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(imagepath));
            }
            else
            {
                imagepath = txtImagePath.Text;
            }

            string str = "Update tbl_Product set P_Name='" + txtName.Text + "',P_Image='" + imagepath + "',P_Price=" + txtPrice + ",P_Description='" + txtDes.Text + "',P_Stock='" + txtStock.Text + "',P_Status='" + RdbtnStatus.SelectedItem.Text + "' where P_Id=" + Session["cid"] + "";
            int i = obj.Fn_ExeNonQuery(str);
            if (i == 1)
            {
                lblmsg.Text = "Successfully Updated";
            }
            else
            {
                lblmsg.Text = " Update Failed";
            }

        }
    }

}