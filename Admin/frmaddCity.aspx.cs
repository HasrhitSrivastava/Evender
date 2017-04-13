using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_frmaddCity : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("pCityMaster", conn.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@stateID",ddlCity.SelectedValue);
            cmd.Parameters.AddWithValue("@CityName",txtcity.Text);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('City Successfuly Added');", true);
            ddlCity.SelectedIndex=0;
            txtcity.Text = "";
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('"+ex.Message+"');", true);
        }
        conn.CloseConnection();

    }
    protected void ddlCity_DataBound(object sender, EventArgs e)
    {
        ddlCity.Items.Insert(0, new ListItem("Select", "0"));
    }
}