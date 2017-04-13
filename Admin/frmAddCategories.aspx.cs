using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_frmAddCategories : System.Web.UI.Page
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
            cmd.Parameters.AddWithValue("@opration", "category");
            cmd.Parameters.AddWithValue("@Inst_Category",txtCategory.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Saved";
            txtCategory.Text = "";
        }
        catch(Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
}