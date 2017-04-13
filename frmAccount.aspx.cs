using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class frmAccount : System.Web.UI.Page
{
    connection conn = new connection();
    string message;
    protected void Page_Load(object sender, EventArgs e)
    {
        msg.Visible = false;
        error.Visible = false;

    }
    protected void ddlUserType_DataBound(object sender, EventArgs e)
    {
        ddlUserType.Items.Insert(0, new ListItem("Select", "0"));
    }
    public void clear()
    {
        txtUserName.Text = "";
        txtPasssword.Text = "";
        txtName.Text = "";
        txtEmail.Text = "";
        txtAddress.Text = "";
        txtConfirmPassword.Text = "";
        txtContact.Text = "";
        ddlUserType.SelectedIndex = 0;
        msg.Visible = false;
        error.Visible = false;
        imgUsr.Visible = false;
        lblUsr.Visible = false;
        ddlUserType.Focus();
    }
    protected void txtUserName_TextChanged(object sender, EventArgs e)
    {
        conn.openconnection();
       // string strSelect = "select User_Name from Add_account where User_Name=@Username";
        SqlCommand cmd = new SqlCommand(@" IF(EXISTS(SELECT * FROM Add_account WHERE User_Name = @username))
    BEGIN
        SELECT 'TRUE'
    END
    ELSE
    BEGIN
        SELECT 'FALSE'
    END", conn.con);
        //SqlCommand cmd1 = new SqlCommand(strSelect, conn.con);
        cmd.Parameters.AddWithValue("@Username", txtUserName.Text);
        bool exists = Convert.ToBoolean(cmd.ExecuteScalar());
        if (exists)
        {
            imgUsr.ImageUrl = "img/icoCross.png";
            imgUsr.Visible = true;
            lblUsr.Visible = true;
            lblUsr.Text = "Username not available";
            lblUsr.ForeColor = System.Drawing.Color.Red;
           
        }
        else
        {
            imgUsr.ImageUrl = "img/icoTick.png";
            imgUsr.Visible = true;
            lblUsr.Visible = true;
            lblUsr.Text = "Username available";
            lblUsr.ForeColor = System.Drawing.Color.Green;
        }
        conn.CloseConnection();

    }
    protected void btnRegister_Click(object sender, EventArgs e)
     {
        conn.openconnection();
        try
        {

            //string strSelect = "select User_Name from Add_account where User_Name=@Username";
            //SqlCommand cmd1 = new SqlCommand(strSelect,conn.con);
            //cmd1.Parameters.AddWithValue("@Username",txtUserName.Text);
            //int m = cmd1.ExecuteNonQuery();
            //if (m ==- 1)
            //{
            //    imgUsr.ImageUrl = "unavailable.png";
            //    imgUsr.Visible = true;
            //    lblUsr.Text = "Username not available";
            //    lblUsr.ForeColor = System.Drawing.Color.Red;
            //}
            //else
            //{
                SqlCommand cmd = new SqlCommand("pAdd_account", conn.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                cmd.Parameters.AddWithValue("@Email_Id", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@contact_no", txtContact.Text);
                cmd.Parameters.AddWithValue("@adress", txtAddress.Text);
                cmd.Parameters.AddWithValue("@password", txtPasssword.Text);
                cmd.Parameters.AddWithValue("@userType", ddlUserType.SelectedValue);
                //cmd.Parameters.Add("@Opration", SqlDbType.Char, 1);
                //cmd.Parameters["@Opration"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                //message = cmd.Parameters["@Opration"].Value.ToString();




                clear();

                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('Registration Succsessful');", true);
                msg.Visible = true;
                mesg.Text = "Registration Successful";

            //}
        }
        catch (Exception ex)
        {
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('" + ex.Message + "');", true);
            error.Visible = true;
            lblerror.Text = ex.Message;

        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        clear();
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        conn.openconnection();
        try
        {
            SqlCommand cmd = new SqlCommand("pLogin", conn.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username",txtLoginUser.Text);
            cmd.Parameters.AddWithValue("@password",txtLoginPassword.Text);
            cmd.Parameters.Add("@Status", SqlDbType.VarChar, 50);
            cmd.Parameters["@Status"].Direction = ParameterDirection.Output;
            int c = cmd.ExecuteNonQuery();
            message = cmd.Parameters["@Status"].Value.ToString();
            if (message == "2")
            {
               
                Session["login"] = txtLoginUser.Text;
                txtLoginUser.Text = "";
                txtLoginPassword.Text = "";
                //loginhistory = Session["login"].ToString();
                Response.Redirect("frmHome.aspx");
            }
            else if (message == "3")
            {
                
                Session["admin"] = txtLoginUser.Text;
                Response.Redirect("Admin/frmAdminHome.aspx");

            }
            else if (message == "UnAuthorized Login")
            {

                error.Visible = true;
                lblerror.Visible = true;
                lblerror.Text = "Invalid User Name Or Password!";
            }
        }
        catch(Exception ex)
        {
            error.Visible = true;
            lblerror.Visible = true;
            lblerror.Text = ex.Message;

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        txtLoginUser.Text = "";
        txtLoginPassword.Text = "";
        txtLoginUser.Focus();
    }
}