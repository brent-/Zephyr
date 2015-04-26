using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Text;
using System.Data;
using System.Threading.Tasks;
using System.Configuration;


namespace Zephyr.Classes
{


    public class SQLLoader
    {
        public const string server = "(LocalDb)\\v11.0";
        public const string database = "aspnet-Zephyr-20150421021644";
        string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        public static void InitializeAdminStatus(string username)
        {
            string setStatus = "update dbo.AspNetUsers set IsAdmin = 0 where @username = username";
            string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection dbConnection = new SqlConnection(connStr);
            SqlCommand dbCommand = new SqlCommand(setStatus, dbConnection);

            dbCommand.CommandText = setStatus;
            dbCommand.Parameters.AddWithValue("@username", username);
            try
            {
                dbConnection.Open();
                dbCommand.ExecuteNonQuery();
                dbConnection.Close();
            }
            catch (Exception e)
            {
                dbConnection.Close();
            }
        }

        public static bool SaveAccount(string username, string Balance, string AccountName)
        {
            string setStatus = "insert into dbo.AspNetUserAccounts([username],[Balance],[AccountName]) Values ((@username),(@Balance),(@AccountName))";
            string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection dbConnection = new SqlConnection(connStr);
            SqlCommand dbCommand = new SqlCommand(setStatus, dbConnection);

            dbCommand.CommandText = setStatus;
            dbCommand.Parameters.AddWithValue("@username", username);
            dbCommand.Parameters.AddWithValue("@Balance", Balance);
            dbCommand.Parameters.AddWithValue("@AccountName", AccountName);
            try
            {
                dbConnection.Open();
                dbCommand.ExecuteNonQuery();
                dbConnection.Close();
                return true;
            }
            catch (SqlException e)
            {
                dbConnection.Close();
                return false;
            }
        }
        public static DataTable ShowAccounts(string username)
        {
            DataTable dt = new DataTable();
            string setStatus = "select AccountName, Balance from dbo.AspNetUserAccounts with (nolock) where username=@username";
            string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection dbConnection = new SqlConnection(connStr);
            SqlCommand dbCommand = new SqlCommand(setStatus, dbConnection);

            dbCommand.CommandText = setStatus;
            dbCommand.Parameters.AddWithValue("@username", username);

            try
            {
                SqlDataAdapter da = new SqlDataAdapter(dbCommand);
                da.Fill(dt);
                dbConnection.Close();
                return dt;
            }
            catch (Exception e)
            {
                dbConnection.Close();
                return null;
            }


        }
    }
}