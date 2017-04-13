using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IndexMasterPage : System.Web.UI.MasterPage
{
    connection conn = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select Name from Add_account where User_Name='" + Session["login"] + "'", conn.con);
        SqlDataReader dr;
        conn.openconnection();
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {

            lnk1.Text = "Welcome: "+dr["Name"].ToString();
            LinkButton1.Text = "Logout";


        }

        conn.CloseConnection();
        
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if(LinkButton1.Text=="Account")
        {
            Response.Redirect("frmAccount.aspx");
        }
        else if(LinkButton1.Text=="Logout")
        {
            Session.Abandon();
            Response.Redirect("frmAccount.aspx");
        }

    }

    protected void btnadvertise_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmAdvertise.aspx");
    }
    protected void lnk1_Click(object sender, EventArgs e)
    {
        if(lnk1.Text=="Login/Signup")
        {
            Response.Redirect("frmAccount.aspx");
        }
    }
}
