using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class frmSubCategory : System.Web.UI.Page
{
    connection conn = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        conn.openconnection();
        try
        {
            SqlCommand cmd = new SqlCommand("pAddCategory",conn.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@opration", "subcategory");
            cmd.Parameters.AddWithValue("@CategoryID",DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@subCategory", txtsubCategory.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Saved";
            txtsubCategory.Text = "";

        }
        catch(Exception ex)
        {
            Label1.Text = ex.Message;
        }

    }
}