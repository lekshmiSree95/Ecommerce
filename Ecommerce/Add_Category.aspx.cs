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
    public partial class Add_Category : System.Web.UI.Page
    {
        ConCls obj = new ConCls();

        protected void Page_Load(object sender, EventArgs e)
        {
           
                
            
        }

        protected void Btn_Insert_Click(object sender, EventArgs e)
        {
            string image = "~/images" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(image));
            string str = "Insert into tbl_category values('" + txtName.Text + "','" + image + "','" + txtDes.Text + "','" + RdbtnStatus.SelectedItem.Text + "')";
            int i = obj.Fn_ExeNonQuery(str);
            if (i == 1)
            {
                lblmsg.Text = "Successfully Inserted";
            }
        }
        
    }
    
}