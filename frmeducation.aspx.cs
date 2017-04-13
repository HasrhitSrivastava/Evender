using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class frmeducation : System.Web.UI.Page
{
    connection conn = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        getEng();
        getManag();

    }
    public void getEng()
    {
        conn.openconnection();
        try
        {
            SqlCommand cmd = new SqlCommand("select ID,SubCategoryName from tbl_InstSubCategory where ID=2", conn.con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

               // LinkButton1.Text = dr["SubCategoryName"].ToString();
            }
        }
        catch (Exception ex)
        {

        }
    }
    public void getManag()
    {
        conn.openconnection();
        try
        {
            SqlCommand cmd = new SqlCommand("select ID,SubCategoryName from tbl_InstSubCategory where ID=3", conn.con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

               // LinkButton2.Text = dr["SubCategoryName"].ToString();
            }
        }
        catch (Exception ex)
        {

        }
    }
}