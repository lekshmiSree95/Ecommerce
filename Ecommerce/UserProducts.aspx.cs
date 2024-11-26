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
    public partial class WebForm1 : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
          if(!IsPostBack)
            {
                string str = "select * from tbl_Product where Cat_Id='"+Session["cid"]+"' ";
                DataSet ds = obj.Fn_ExeAdapter(str);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["pid"] = getid;
            Response.Redirect("ViewProducts.aspx");
        }
    }
}