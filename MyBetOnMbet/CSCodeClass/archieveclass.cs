using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MyBetOnMbet.CSCodeClass
{
    public class archieveclass
    {
 
            static string cs = System.Configuration.ConfigurationManager.ConnectionStrings["pointintimecs"].ConnectionString;
            public static DataTable datatablemonths()
            {
                SqlConnection con = new SqlConnection(cs);
                DataTable table = new DataTable();

                try
                {
                    SqlCommand cmd = new SqlCommand("getmonths", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

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
