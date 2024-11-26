using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Ecommerce
{
    public class ConnectionClass
    {
        SqlConnection con;
        public ConnectionClass()
        {
            con = new SqlConnection(@"server=PERSONALPC\SQLEXPRESS;database=Db_Ecommerce;integrated security=true;");
        }

        public void Fn_ExeNonQuery(SqlCommand cmd)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public string Fn_ExeScalar(SqlCommand cmd)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            cmd.Connection = con;
            con.Open();
            string s = cmd.ExecuteScalar().ToString();
            con.Close();
            return s;

        }

        public SqlDataReader Fn_ExeReader(SqlCommand cmd)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd.Connection = con;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }

        public DataSet Fn_ExeAdapter(SqlCommand cmd)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd.Connection = con;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}