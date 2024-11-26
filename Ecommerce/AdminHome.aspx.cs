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
    public partial class AdminHome : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        { 
            
        }
        protected void Cat_AddImageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Add_Category.aspx");
        }

        protected void Cat_EditImageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Edit_Category.aspx");
        }

        

        protected void Prd_EditImageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Edit_Product.aspx");
        }

        protected void Prd_AddImageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Add_Product.aspx");
        }

        protected void Btn_View_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Orders.aspx");
        }
        protected void Btn_Feedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewFeedback.aspx");
        }




    }
}