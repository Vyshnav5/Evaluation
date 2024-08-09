using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Exam_pro
{
    public class tution
    {
        public SqlConnection con;
        public SqlCommand cmd;

        public tution()
        {
            con = new SqlConnection(@"Data Source=DESKTOP-GCOPTRV\SQLEXPRESS;Initial Catalog=Evaluation;Integrated Security=True");
            cmd = new SqlCommand();
            cmd.Connection = con;
        }


        public SqlConnection getcon()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            return con;
        }

        public void dbClose()
        {
            con.Close();
        }
        public int exenonquery(string sql)
        {
            getcon();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            int i = cmd.ExecuteNonQuery();
            return 1;


        }

        public DataTable exetable(String sql)
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}