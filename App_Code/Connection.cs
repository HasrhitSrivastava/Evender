using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for Connection
/// </summary>
public class connection
{
    public SqlConnection con = new SqlConnection();
    public connection()
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["EvenderConnectionString"].ConnectionString;
    }

    public void openconnection()
    {
        if (con.State == 0)
            con.Open();

    }
    public void CloseConnection()
    {
        if (con.State != 0)
        {
            con.Close();
        }

    }
}