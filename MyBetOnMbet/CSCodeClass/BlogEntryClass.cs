using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace MyBetOnMbet.CSCodeClass
{
    public class BlogEntryClass
    {
        
        static string cs = ConfigurationManager.ConnectionStrings["pointintimecs"].ConnectionString;
        public static int PostBlock (string heading, string blogentry, string month, DateTime current, string imgpath )
        {
            SqlConnection con = new SqlConnection(cs);
            int result = 0;
            try
            {
                SqlCommand cmd = new SqlCommand("InsertBlogs", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Heading", heading);
                cmd.Parameters.AddWithValue("@BlogDate", current);
                cmd.Parameters.AddWithValue("@BlogMonth", month);
                cmd.Parameters.AddWithValue("@BlogImage", imgpath);
                cmd.Parameters.AddWithValue("@BlogPost", blogentry);
                cmd.Connection.Open();
                result = cmd.ExecuteNonQuery();
                result = 1;
            }
            catch(Exception)
            {
                result = 0;

            }

            finally
            {
                con.Close();
            }
            return result;
        }
    }
}