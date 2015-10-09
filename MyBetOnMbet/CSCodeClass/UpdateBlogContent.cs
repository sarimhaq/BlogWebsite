using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MyBetOnMbet.CSCodeClass
{
    public class UpdateBlogContent
    {
         static string cs = System.Configuration.ConfigurationManager.ConnectionStrings["pointintimecs"].ConnectionString;
        public static int UpdateContent(int BlogID, string BlogText)
        {
            SqlConnection con = new SqlConnection(cs);
            int result = 0;
            try
            {
                SqlCommand cmd = new SqlCommand("UpdateBlogText", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                 cmd.Parameters.AddWithValue("@BlogID", BlogID);
                cmd.Parameters.AddWithValue("@BlogPost", BlogText);
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

        public static int UpdateHeading(int BlogID, string BlogHeading)
        {
            SqlConnection con = new SqlConnection(cs);
            int result = 0;
            try
            {
                SqlCommand cmd = new SqlCommand("UpdateHeading", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@BlogID", BlogID);
                cmd.Parameters.AddWithValue("@Heading", BlogHeading);
                cmd.Connection.Open();
                result = cmd.ExecuteNonQuery();
                result = 1;
            }
            catch (Exception)
            {
                result = 0;

            }

            finally
            {
                con.Close();
            }
            return result;
        }
        public static int DeleteBlog(int BlogID)
        {
            SqlConnection con = new SqlConnection(cs);
            int result = 0;
            try
            {
                SqlCommand cmd = new SqlCommand("DeleteBlog", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@BlogID", BlogID);
                
                cmd.Connection.Open();
                result = cmd.ExecuteNonQuery();
                result = 1;
            }
            catch (Exception)
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
