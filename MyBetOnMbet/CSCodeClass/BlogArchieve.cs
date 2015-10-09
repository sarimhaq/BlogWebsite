using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MyBetOnMbet.CSCodeClass
{
    public class BlogArchieve
    {
        static string cs = System.Configuration.ConfigurationManager.ConnectionStrings["pointintimecs"].ConnectionString;
            public static DataTable MonthWiseArchieve(string month)
            {
                SqlConnection con = new SqlConnection(cs);
                DataTable table = new DataTable();
                
                try
                {
                    SqlCommand cmd = new SqlCommand("MonthWiseBlogs", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BlogMonth", month);
                    
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

            public static DataTable RecentPosts()
            {
                SqlConnection con = new SqlConnection(cs);
                DataTable table = new DataTable();

                try
                {
                    SqlCommand cmd = new SqlCommand("TopSixEnteries", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                   

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
     
            public static DataTable SearchResults(string query)
            {
                SqlConnection con = new SqlConnection(cs);
                DataTable table = new DataTable();
                
                try
                {
                    SqlCommand cmd = new SqlCommand("Search", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Query", query);
                    
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

        }
    }
