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
    public partial class Category_Edit : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            Gridview_bind();
        }
        public void Gridview_bind()
        {
            string str = "Select * from tbl_Category";
            DataSet ds = obj.Fn_ExeAdapter(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int i = e.NewSelectedIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            Session["cid"] = getid;
            string str = "select * from tbl_category where Cat_Id=" + getid + "";
            SqlDataReader dr = obj.Fn_ExeReader(str);
            while(dr.Read())
            {
                txtName.Text = dr["Cat_Name"].ToString();
                txtImagePath.Text = dr["Cat_Image"].ToString();
                txtDes.Text = dr["Cat_Description"].ToString();
                RdbtnStatus.SelectedValue = dr["Cat_Status"].ToString();

            }

        }

        protected void Btn_Update_Click(object sender, EventArgs e)
        {
            string imagepath;
            if(FileUpload1.HasFile)
            {
                imagepath = "~/images/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(imagepath));
            }
            else
            {
                imagepath = txtImagePath.Text;
            }
           
            string str= "Update tbl_Category set Cat_Name='"+txtName.Text+ "',Cat_Image='"+imagepath+ "',Cat_Description='" +txtDes.Text+ "',Cat_Status='" + RdbtnStatus.SelectedItem.Text+"' where Cat_Id="+ Session["cid"] + "";
            int i = obj.Fn_ExeNonQuery(str);
            if(i==1)
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