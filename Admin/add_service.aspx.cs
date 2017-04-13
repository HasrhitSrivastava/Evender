using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_add_service : System.Web.UI.Page
{
   // SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    bind();
        //    bind1();
           
        //}
    }
    //public void bind()
    //{
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select * from tbl_category", con);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    ddl_cat.DataSource = ds;
    //    ddl_cat.DataTextField = "cat_name";
    //    ddl_cat.DataValueField = "cat_id";
    //    ddl_cat.DataBind();
    //    con.Close();
    //}
    //public void bind1()
    //{
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select * from tbl_subCategory", con);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    ddl_sub.DataSource = ds;
    //    ddl_sub.DataTextField = "sub_cat_name";
    //    ddl_sub.DataValueField = "sub_cat_id";
    //    ddl_sub.DataBind();
    //    con.Close();
    //}
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        //con.Open();
        //SqlCommand cmd = new SqlCommand("insert into tbl_service_info(service_name,contact_number,address,service_details,cat_id,sub_cat_id,city,website)values(@service,@contact,@address,@details,@cat,@subcat,@city,@web)", con);
        //cmd.Parameters.AddWithValue("@service", Text_name.Text);
        //cmd.Parameters.AddWithValue("@contact", Text_contact.Text);
        //cmd.Parameters.AddWithValue("@address", Text_addrs.Text);
        //cmd.Parameters.AddWithValue("@details", TextBox5.Text);
        //cmd.Parameters.AddWithValue("@cat", ddl_cat.SelectedValue);
        //cmd.Parameters.AddWithValue("@subcat", ddl_sub.SelectedValue);
        //cmd.Parameters.AddWithValue("@city", TextBox_city.Text);
        //cmd.Parameters.AddWithValue("@web", TextBox_website.Text);
        //int i = cmd.ExecuteNonQuery();
        //if (i == 1)
        //{
        //    Label1.Text = "Data Inserted";
        //}
        //else
        //{
        //    Label1.Text = "Insertion Failed";
        //}



    }
}