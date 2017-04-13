using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

public partial class frmAddingCollage : System.Web.UI.Page
{
    connection conn = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
         DataSet ds = new DataSet();
         string cmdstr = "Select ID,Course from Coursemaster";
        SqlDataAdapter adp = new SqlDataAdapter(cmdstr, conn.con);
        adp.Fill(ds);
       
        if (ds.Tables[0].Rows.Count > 0)
        {
            ddlCourses.DataSource = ds.Tables[0];
            ddlCourses.DataTextField = "Course";
            ddlCourses.DataValueField = "ID";
            ddlCourses.DataBind();
        } 

    }
    public void clear()
    {
        txtInstName.Text = "";
        txtEmail.Text = "";
        txtContact.Text = "";
        txtAddress.Text = "";
        txtUrl.Text = "";
        ddlCategory.SelectedIndex = 0;
        ddlType.SelectedIndex = 0;

    }
    protected void btnsubmitt_Click(object sender, EventArgs e)
    {
        try
        {




            conn.openconnection();
            string filename = Path.GetFileName(fileImage.PostedFile.FileName);
            //Save images into Images folder
            fileImage.SaveAs(Server.MapPath("img/" + filename)); ;
            //string file2 = fileVedieo.FileName;
            //fileVedieo.SaveAs(Server.MapPath("img/" + file2));
            SqlCommand cmd = new SqlCommand("pAddInstitutes", conn.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@inst_CategoryID", ddlType.SelectedValue);
            cmd.Parameters.AddWithValue("@Inst_SubCategoryID", ddlCategory.SelectedValue);
            cmd.Parameters.AddWithValue("@Inst_name", txtInstName.Text);
            cmd.Parameters.AddWithValue("@Inst_address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@Contact", txtContact.Text);
            cmd.Parameters.AddWithValue("@Inst_Mail", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Inst_Url", txtUrl.Text);

            cmd.Parameters.AddWithValue("@Inst_Image","img/"+ filename);
            cmd.ExecuteNonQuery();
            clear();
            //lblmsg.Text = "Saved";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('Institute Successfuly Added.');", true);



        }
        catch (Exception ex)
        {
            //lblmsg.Text = ex.Message;
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('" + ex.Message + "');", true);
        }
    }
    protected void ddlType_DataBound(object sender, EventArgs e)
    {
        ddlType.Items.Insert(0, new ListItem("Select", "0"));
    }
    protected void ddlCategory_DataBound(object sender, EventArgs e)
    {
        ddlCategory.Items.Insert(0, new ListItem("select", "0"));
    }
}