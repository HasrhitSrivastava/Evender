using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvenderConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        try
        {

            SqlCommand cmd = new SqlCommand("pStateMaster", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@stateName", txtStateName.Text);
            cmd.Parameters.AddWithValue("@EntryBy",Session["admin"].ToString());
            cmd.ExecuteNonQuery();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('State Successfuly Added');", true);
            txtStateName.Text = "";
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('" + ex.Message + "');", true);
        }
        con.Close();
    }
}