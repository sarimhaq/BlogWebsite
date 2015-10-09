using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MyBetOnMbet.CSCodeClass
{
    public class CoverPicUpload
    {
        static string cs = ConfigurationManager.ConnectionStrings["pointintimecs"].ConnectionString;
        public static int UploadCoverPic(string BlogUrl, string PictureUrl)
        {
            System.Data.SqlClient.SqlConnection con = new SqlConnection(cs);
            int result = 0;
            try
            {
                SqlCommand cmd = new SqlCommand("NewSliderAddition", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@BlogUrl", BlogUrl);
                cmd.Parameters.AddWithValue("@PictureUrl", PictureUrl );
                
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