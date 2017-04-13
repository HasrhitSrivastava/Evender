using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_AdminMasterPage : System.Web.UI.MasterPage
{
    connection conn = new connection();
    string adminSession;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.openconnection();
        adminSession = Session["admin"].ToString();
        if (adminSession == "")
        {
            Response.Redirect("frmAccount.aspx");
        }
        else
        {

            SqlCommand cmd = new SqlCommand("select Name from Add_account where User_Name='" + adminSession + "'", conn.con);

            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Label1.Text = dr["Name"].ToString();
            }
            conn.CloseConnection();
        }

    }
}
