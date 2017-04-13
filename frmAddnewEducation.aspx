<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmAddnewEducation.aspx.cs" Inherits="frmAddnewEducation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 172px;
        }

        .auto-style2 {
            width: 131px;
        }

        .auto-style3 {
            width: 150px;
        }
        .auto-style4 {
            width: 330px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class=" banner1-buying">
        <div class=" container">
            <h3><span>Insti</span> tution</h3>
            <!---->
            <div class="menu-right">
                <ul class="menu">
                    <li class="item1"><a href="#">Menu<i class="glyphicon glyphicon-menu-down"> </i></a>
                        <ul class="cute">

                            <li class="subitem1"><a href="frmeducation.aspx">Educatoin</a></li>
                            <li class="subitem2"><a href="frmRealstate.aspx">Real Estate </a></li>
                            <li class="subitem3"><a href="frmHospital.aspx">Hospitals </a></li>
                            <li class="subitem1"><a href="frmRestaurent.aspx">Restaurant </a></li>
                            <li class="subitem2"><a href="frmShop.aspx">Shops</a></li>
                            <li class="subitem3"><a href="frmhotels.aspx">Hotels </a></li>
                            <li class="subitem3"><a href="frmRepairs.aspx">Dealers& Repairs</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="clearfix"></div>
            <!--initiate accordion-->
            <script type="text/javascript">
                $(function () {
                    var menu_ul = $('.menu > li > ul'),
                           menu_a = $('.menu > li > a');
                    menu_ul.hide();
                    menu_a.click(function (e) {
                        e.preventDefault();
                        if (!$(this).hasClass('active')) {
                            menu_a.removeClass('active');
                            menu_ul.filter(':visible').slideUp('normal');
                            $(this).addClass('active').next().stop(true, true).slideDown('normal');
                        } else {
                            $(this).removeClass('active');
                            $(this).next().stop(true, true).slideUp('normal');
                        }
                    });

                });
            </script>

        </div>
    </div>
    <div class="dealers">
        <div class="container">
            <div class="dealer-top"></div>
            <hr />
            <h2 style="color: yellowgreen; font-size: larger">Lets Start Permoting Your Institution</h2>
            <hr />
            <div>
                <center>
                <fieldset style="width:100%;text-align:left">
                    
                    <h2 style="font-size:large;color:darkorange">Basic Information</h2><hr />
<table style="width:100%;"><tr><td class="auto-style1">Institution Type</td><td>
    <asp:DropDownList ID="ddlInstCategory" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="InstitueCategory" 
       AutoPostBack="true" DataValueField="ID" OnDataBound="ddlInstCategory_DataBound">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="SELECT [ID], [InstitueCategory] FROM [tbl_InstituteCategory]"></asp:SqlDataSource>
    </td><td colspan="2">&nbsp;</td></tr><tr><td class="auto-style1">&nbsp;</td><td>&nbsp;</td><td colspan="2">&nbsp;</td></tr><tr><td class="auto-style1">Institution Category</td><td>
    <asp:DropDownList ID="ddlInstSubCategory" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="SubCategoryName" DataValueField="ID" OnDataBound="ddlInstSubCategory_DataBound">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="SELECT [ID], [SubCategoryName] FROM [tbl_InstSubCategory] where CategoryID=@CategoryID">
        <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlInstCategory" Name="CategoryID" PropertyName="SelectedValue" />
                                    </SelectParameters>
    </asp:SqlDataSource>
    </td><td colspan="2">&nbsp;</td></tr><tr><td class="auto-style1">&nbsp;</td><td>&nbsp;</td><td colspan="2">&nbsp;</td></tr><tr><td class="auto-style1">Institution Name</td><td>
    <asp:TextBox ID="txtInstName" runat="server" CssClass="form-control" placeholder="*Enter Institution Name"></asp:TextBox>
    </td><td colspan="2">&nbsp;</td></tr><tr><td class="auto-style1">&nbsp;</td><td>&nbsp;</td><td colspan="2">&nbsp;</td></tr><tr><td class="auto-style1">Email ID</td><td>
    <asp:TextBox ID="txtInstMail" runat="server" CssClass="form-control" placeholder="*Enter EmailID"></asp:TextBox>
    </td><td class="auto-style2">Phone No.</td><td>
    <asp:TextBox ID="txtInstPhone" runat="server" CssClass="form-control" placeholder="*Enter Phone Number With STD Code"></asp:TextBox>
    </td></tr></table>
                    <hr />
                    <h2 style="font-size:large;color:darkorange">Contact Information</h2><hr />
<table style="width:100%;"><tr><td>State</td><td>
    <asp:DropDownList ID="ddlInstState" runat="server" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="StateName" 
       AutoPostBack="true" DataValueField="ID" OnDataBound="ddlInstState_DataBound">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="SELECT [ID], [StateName] FROM [tbl_Statemaster]"></asp:SqlDataSource>
    </td><td colspan="2">&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td colspan="2">&nbsp;</td></tr><tr><td>City</td><td>
    <asp:DropDownList ID="ddlInstCity" runat="server" CssClass="form-control" DataSourceID="SqlDataSource4" DataTextField="CityName" DataValueField="ID" OnDataBound="ddlInstCity_DataBound">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="SELECT [ID], [CityName] FROM [tbl_CityMaster] where stateID=@stateID">
        <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlInstState" Name="stateID" PropertyName="SelectedValue" />
                                    </SelectParameters>
    </asp:SqlDataSource>
    </td><td colspan="2">&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td colspan="2">&nbsp;</td></tr><tr><td>Address</td><td>
    <asp:TextBox ID="txtInstAddress" runat="server" CssClass="form-control" placeholder="*Enter Address"></asp:TextBox>
    </td><td>Land Mark</td><td>
    <asp:TextBox ID="txtInstLandmark" runat="server" CssClass="form-control" placeholder="*Enter Land Mark"></asp:TextBox>
    </td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td colspan="2">&nbsp;</td></tr><tr><td>PinCode</td><td>
    <asp:TextBox ID="txtInstPin" runat="server" CssClass="form-control" placeholder="*Enter PinCode"></asp:TextBox>
    </td><td>Website URL</td><td>
    <asp:TextBox ID="txtWebsiteURL" runat="server" CssClass="form-control" placeholder="*Enter URL"></asp:TextBox>
    </td></tr></table>
                     <hr />
                    <h2 style="font-size:large;color:darkorange">Courses Information</h2><hr />
<table style="width:100%;"><tr><td class="auto-style3">Course Name</td><td>
    <asp:TextBox ID="txtCourseName" runat="server" CssClass="form-control" placeholder="*Enter Course Names Seperate with Commas"></asp:TextBox>
    </td><td>&nbsp;</td></tr><tr><td class="auto-style3">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td class="auto-style3">Course Type</td><td>
    <asp:DropDownList ID="ddlType" runat="server" CssClass="form-control" OnDataBound="ddlType_DataBound">
        <asp:ListItem>*Select Course Type</asp:ListItem>
        <asp:ListItem>Full Time</asp:ListItem>
        <asp:ListItem>Part Time</asp:ListItem>
    </asp:DropDownList>
    </td><td>&nbsp;</td></tr></table>
                     <hr />
                    <h2 style="font-size:large;color:darkorange">Placement Information</h2><hr />
<table style="width:100%;"><tr><td class="auto-style4">Placement Records</td><td>
    <asp:TextBox ID="txtPlacementRecord" runat="server" CssClass="form-control" placeholder="*Enter Placement Records in Percentage"></asp:TextBox>
    </td><td>&nbsp;</td></tr><tr><td class="auto-style4">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td class="auto-style4">Placements in Current Acadmic Session</td><td>
    <asp:TextBox ID="txtCurrentPlacements" runat="server" CssClass="form-control" placeholder="*Enter Current Year Placements"></asp:TextBox>
    </td><td>&nbsp;</td></tr><tr><td class="auto-style4">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td class="auto-style4">Top Recruiters</td><td>
    <asp:TextBox ID="txtTopRecruiters" runat="server" CssClass="form-control" placeholder="*Enter Compnay Names Seperate with Commas"></asp:TextBox>
    </td><td>&nbsp;</td></tr><tr><td class="auto-style4">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td class="auto-style4">Job Fairs</td><td>
    <asp:TextBox ID="txtJobfairs" runat="server" CssClass="form-control" placeholder="*Enter Job Fairs Seperate with Commas(Optional)"></asp:TextBox>
    </td><td>&nbsp;</td></tr><tr><td class="auto-style4">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td class="auto-style4">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></table>
                <div style="float:right"><asp:Button ID="btnSaveInst" runat="server" Text="Submit"
                   CssClass="btn btn-success" ></asp:Button>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnClearInst" runat="server" Text="Reset" CssClass="btn btn-danger" />
                </div>
                </fieldset>
                    </center>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

