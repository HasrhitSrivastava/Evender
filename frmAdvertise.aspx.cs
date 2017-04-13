using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class frmAdvertise : System.Web.UI.Page
{
    connection conn = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        msg.Visible = false;
        error.Visible = false;
        pnl2.Visible = false;
        pnl3.Visible = false;
        pnl4.Visible = false;
        pnl1.Visible = true;

    }
    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        DropDownList1.Items.Insert(0, new ListItem("*SELECT State", "0"));
    }
    protected void DropDownList2_DataBound(object sender, EventArgs e)
    {
        DropDownList2.Items.Insert(0, new ListItem("*SELECT City", "0"));
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
    protected void btnSaveMedia_Click(object sender, EventArgs e)
    {
        conn.openconnection();
        try
        {
            string imgfile = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("AdvertismentFilse/" + imgfile));
            string Mediafile = FileUpload2.FileName;
            FileUpload2.SaveAs(Server.MapPath("AdvertismentFilse/" + Mediafile));
            SqlCommand cmd = new SqlCommand("pPostAdds", conn.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Operation", "Insert");
            cmd.Parameters.AddWithValue("@Companyname",txtComapny.Text);
            cmd.Parameters.AddWithValue("@OwnerName",txtName.Text);
            cmd.Parameters.AddWithValue("@OwnerEmailID", txtMail.Text);
            cmd.Parameters.AddWithValue("@OwnerMoblile", txtMobile.Text);
            cmd.Parameters.AddWithValue("@landline", txtLandline1.Text);
            cmd.Parameters.AddWithValue("@address", txtAdress.Text);
            cmd.Parameters.AddWithValue("@street", txtstreet.Text);
            cmd.Parameters.AddWithValue("@Building", txtBuilding.Text);
            cmd.Parameters.AddWithValue("@landmark", txtLandmark.Text);
            cmd.Parameters.AddWithValue("@stateID", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@cityID", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@PinCode", txtPin.Text);
            cmd.Parameters.AddWithValue("@ContactPerson", txtContactPerson.Text);
            cmd.Parameters.AddWithValue("@Cont_Mobile", txtMobileNumber.Text);
            cmd.Parameters.AddWithValue("@Cont_Email", txtCont_Email.Text);
            cmd.Parameters.AddWithValue("@URL", txtURL.Text);
            cmd.Parameters.AddWithValue("@Imagepath", @"AdvertismentFilse\"+FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@Vedio",@"AdvertismentFilse\"+ FileUpload2.FileName);
            cmd.Parameters.AddWithValue("@EntryBy", Session["login"]);
            cmd.ExecuteNonQuery();
            msg.Visible = true;
            mesg.Text = "Your Add Posted Successfuly We will Contact You Soon.";

        }
        catch(Exception ex)
        {
            error.Visible = true;
            lblerror.Text = ex.Message;
        }

    }
}