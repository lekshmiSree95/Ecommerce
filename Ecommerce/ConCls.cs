using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Ecommerce
{
    public class ConCls
    {
        SqlConnection con;
        SqlCommand cmd;

        public ConCls()
        {
            con = new SqlConnection(@"server=PERSONALPC\SQLEXPRESS;database=Db_Ecommerce;integrated security=true;");
        }
        public int Fn_ExeNonQuery(string sqlsubquery)
        { 
            if(con.State==ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlsubquery, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public string Fn_ExeScalar(string sqlsubquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlsubquery, con);
            con.Open();
            string s = cmd.ExecuteScalar().ToString();
            con.Close();
            return s;
        }
        public DataSet Fn_ExeAdapter(string sqlsubquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlsubquery, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
 
        }
        public SqlDataReader Fn_ExeReader(string sqlsubquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlsubquery, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            //con.Close();
            return dr;
        }

    }

}

