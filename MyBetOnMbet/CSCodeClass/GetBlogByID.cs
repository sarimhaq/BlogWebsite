using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data;

namespace MyBetOnMbet.CSCodeClass
{
    public class GetBlogByID
    {
        public class UpdateBlogContent
        {
            static string cs = System.Configuration.ConfigurationManager.ConnectionStrings["pointintimecs"].ConnectionString;
            public static DataTable SingleBlogRetrival(int BlogID)
            {
                SqlConnection con = new SqlConnection(cs);
                DataTable table = new DataTable();

                try
                {
                    SqlCommand cmd = new SqlCommand("SingleBlogRetrievel", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BlogID", BlogID);

                    cmd.Connection.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        table.Load(dr);
                        dr.Close();
                    }
                }
                catch (Exception)
                {

                }

                finally
                {
                    con.Close();
                }
                return table;
            }


            public static DataTable CommentRetrival(int BlogID)
            {
                SqlConnection con = new SqlConnection(cs);
                DataTable table = new DataTable();

                try
                {
                    SqlCommand cmd = new SqlCommand("CommentRetrieval", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BlogID", BlogID);
                    cmd.Connection.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        table.Load(dr);
                        dr.Close();
                    }
                }
                catch (Exception)
                {

                }

                finally
                {
                    con.Close();
                }
                return table;
            }


            public static int CommentEntry(string comment, int blogid, string name)
            {
                SqlConnection con = new SqlConnection(cs);
                DataTable table = new DataTable();
                DateTime nowis = DateTime.Now;
                int result;


                try
                {
                    SqlCommand cmd = new SqlCommand("AddComment", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BlogID", blogid);
                    cmd.Parameters.AddWithValue("@CommentText", comment);
                    cmd.Parameters.AddWithValue("@commentdate", nowis);
                    cmd.Parameters.AddWithValue("@commentname", name);
                    cmd.Connection.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    cmd.Connection.Open();
               
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
                return result ;
            }
        }
    }
}
    

