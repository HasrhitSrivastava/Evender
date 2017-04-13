using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class frmAddNewShop : System.Web.UI.Page
{
    connection conn = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        string add = (string)(Session["login"]) ?? "";

        if (add.Equals(""))
        {
            pnl2.Visible = false;
            pnl3.Visible = false;
            pnl4.Visible = false;
            pnl1.Visible = false;
            pnlmsg.Visible = true;
        }
        else
        {
            
            pnl1.Visible = true;
            pnlmsg.Visible = false;
        }
        msg.Visible = false;
        error.Visible = false;
        pnl2.Visible = false;
        pnl3.Visible = false;
        pnl4.Visible = false;
        //pnl1.Visible = true;
    }
    protected void ddlShopCategory_DataBound(object sender, EventArgs e)
    {
        ddlShopCategory.Items.Insert(0, new ListItem("*SELECT Shop Type", "0"));
    }
    protected void DropDownList2_DataBound(object sender, EventArgs e)
    {
        DropDownList2.Items.Insert(0, new ListItem("*SELECT City", "0"));
    }
    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        DropDownList1.Items.Insert(0, new ListItem("*SELECT State", "0"));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        pnl1.Visible = false;
        pnl2.Visible = true;
    }
    protected void btnSaveLocation_Click(object sender, EventArgs e)
    {
        pnl1.Visible = false;
        pnl2.Visible = false;
        pnl3.Visible = true;
        pnl4.Visible = false;

    }
    protected void btnSaveContact_Click(object sender, EventArgs e)
    {
        pnl4.Visible = true;
        pnl1.Visible = false;
        pnl2.Visible = false;
        pnl3.Visible = false;

    }
    public void clear()
    {
        ddlShopCategory.SelectedIndex = 0;
        txtshopTitle.Text = "";
        txtOwner.Text = "";
        txtMobile.Text = "";
        txtEmailID.Text = "";
        txtDetailed.Text = "";
       
    }
    protected void btnSaveMedia_Click(object sender, EventArgs e)
    {
        conn.openconnection();
        try
        {
            string imgfile = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("imgShop/" + imgfile));
            string Mediafile = FileUpload2.FileName;
            //FileUpload2.SaveAs(Server.MapPath("imgShop/" + Mediafile));
            SqlCommand cmd = new SqlCommand("[pAddShop]", conn.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Operation", "Insert");
            cmd.Parameters.AddWithValue("@subCategoryid", ddlShopCategory.SelectedValue);
            cmd.Parameters.AddWithValue("@shoptitle", txtshopTitle.Text);
            cmd.Parameters.AddWithValue("@OwnerName", txtOwner.Text);
            cmd.Parameters.AddWithValue("@mobileNo", txtMobile.Text);
            cmd.Parameters.AddWithValue("@EmailID", txtEmailID.Text);
            cmd.Parameters.AddWithValue("@SortDesc", txtSortDescription.Text);
            cmd.Parameters.AddWithValue("@AboutProducts", txtProducts.Text);
            cmd.Parameters.AddWithValue("@Details", txtDetailed.Text);
            cmd.Parameters.AddWithValue("@Other", txtOther.Text);
            cmd.Parameters.AddWithValue("@stateID", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@cityID", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@pin", txtPin.Text);
            cmd.Parameters.AddWithValue("@WebURL", txtURL.Text);
            cmd.Parameters.AddWithValue("@Image", @"imgShop\" + imgfile);
            cmd.Parameters.AddWithValue("@Vedio", Mediafile);
            cmd.Parameters.AddWithValue("@EntryBy", Session["login"]);
            cmd.ExecuteNonQuery();
            msg.Visible = true;
            mesg.Text = "Your Add Posted Successfuly We will Contact You Soon.";

        }
        catch (Exception ex)
        {
            error.Visible = true;
            lblerror.Text = ex.Message;
        }

    }
}