using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CrudProject
{
    public class DBcode
    {
        SqlConnection con = new SqlConnection (@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=crudproj;Integrated Security=true");
        public int Insert (string name,int age)
        {
            SqlCommand cmd = new SqlCommand("insertData",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue ("@name", name);
            cmd.Parameters.AddWithValue("@age",age);
            con.Open ();
            int r = cmd.ExecuteNonQuery();
            con.Close ();

            return r;
        }
        public DataSet Select()
        {
            SqlDataAdapter sda = new SqlDataAdapter("viewData",con);
            DataSet ds = new DataSet ();
            sda.Fill (ds);

            return ds;
        }
    }
}
