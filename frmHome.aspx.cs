using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmHome : System.Web.UI.Page
{
    connection conn = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        //AdRotator1.DataSource = fetchadds();
        //AdRotator1.DataBind();
        //AdRotator2.DataSource = fetchadds();
        //AdRotator2.DataBind();
        //AdRotator3.DataSource = fetchadds();
        //AdRotator3.DataBind();

    }
    //protected void Timer1_Tick(object sender, EventArgs e)
    //{
    //    AdRotator1.DataSource = fetchadds();
    //    AdRotator1.DataBind();
    //    AdRotator2.DataSource = fetchadds();
    //    AdRotator2.DataBind();
    //    AdRotator3.DataSource = fetchadds();
    //    AdRotator3.DataBind();
    //}
    //private DataTable fetchadds()
    //{

    //    conn.openconnection();
    //    SqlDataAdapter adp = new SqlDataAdapter("Select Comapny_Name,Web_URL,Image from tbl_Detailed_Advertise", conn.con);
    //    DataTable dt = new DataTable();
    //    adp.Fill(dt);
    //    conn.CloseConnection();
    //    return dt;



    //}
}