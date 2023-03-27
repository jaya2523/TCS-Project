using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Lab.Domain;
using Dapper;

namespace Lab.DAL
{
    public class dalViews
    {
        static string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        public static SqlConnection GetConnection()
        {
            var connection = new SqlConnection(connectionString);
            connection.Open();
            return connection;
        }

        public static List<clsViews> FetchList()
        {
            string sql = "SELECT * FROM SYSTEMS";

            using(var con = GetConnection())
            {
                return con.Query<clsViews>(sql).ToList();
            }
        }

        public static List<SoftUsage> FetchList2()
        {
            string sql = "SELECT * FROM SOFTWARES";

            using (var con = GetConnection())
            {
                return con.Query<SoftUsage>(sql).ToList();
            }
        }

        public static List<clsViews2> FetchList3()
        {
            string sql3 = "SELECT LabA FROM REPORTS where Year='1' Or Year='2' Or Year='3' Or Year='4'";
            using (var con = GetConnection())
            {
                return con.Query<clsViews2>(sql3).ToList();
            }
        }
        public static List<clsViews2> FetchList4()
        {
            string sql4 = "SELECT LabB FROM REPORTS where Year='1' Or Year='2' Or Year='3' Or Year='4'";
            using (var con = GetConnection())
            {
                return con.Query<clsViews2>(sql4).ToList();
            }
        }
        public static List<clsViews2> FetchList5()
        {
            string sql5 = "SELECT LabC FROM REPORTS where Year='1' Or Year='2' Or Year='3' Or Year='4'";
            using (var con = GetConnection())
            {
                return con.Query<clsViews2>(sql5).ToList();
            }
        }
        public static List<clsViews2> FetchList6()
        {
            string sql6 = "SELECT LabD FROM REPORTS where Year='1' Or Year='2' Or Year='3' Or Year='4'";
            using (var con = GetConnection())
            {
                return con.Query<clsViews2>(sql6).ToList();
            }
        }
    }
}