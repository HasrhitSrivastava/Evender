using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmAddnewEducation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ddlInstCategory_DataBound(object sender, EventArgs e)
    {
        ddlInstCategory.Items.Insert(0, new ListItem("*Select Institution Type","0"));
    }
    protected void ddlInstSubCategory_DataBound(object sender, EventArgs e)
    {
        ddlInstSubCategory.Items.Insert(0, new ListItem("*Select Category", "0"));
    }
    protected void ddlInstState_DataBound(object sender, EventArgs e)
    {
        ddlInstState.Items.Insert(0, new ListItem("*Select State","0"));
    }
    protected void ddlInstCity_DataBound(object sender, EventArgs e)
    {
        ddlInstCity.Items.Insert(0,new ListItem("*Select City","0"));
    }
    protected void ddlType_DataBound(object sender, EventArgs e)
    {
        //ddlType.Items.Insert(0,new ListItem("*Select Course Mode","0"));
    }
}