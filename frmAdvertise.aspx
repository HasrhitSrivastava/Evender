<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmAdvertise.aspx.cs" Inherits="frmAdvertise" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="tabbed-panels.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 128px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class=" banner5-buying">
        <div class=" container">
            <h3><span>Adver</span> tise</h3>
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
            <div class="dealer-top">
                <hr />
                <h2 style="color: yellowgreen; font-size: larger">Permote Your Business with us</h2>
                <hr />
                <br />
                <br />
                <div id="msg" runat="server" class="alert alert-success fade in">
                    <asp:Label ID="mesg" runat="server"></asp:Label>
                </div>
                <div id="error" runat="server" class="alert alert-block alert-danger fade in">
                    <asp:Label ID="lblerror" runat="server"></asp:Label>
                </div>
                <div>
                    <center>
                    <asp:Panel ID="pnl1" runat="server">
                    
                            <fieldset style="text-align:left">
                                <h2 style="font-size:large;color:darkorange">Basic Information</h2>
                                <hr />
                            <table style="width: 100%; text-align:left">
                                
                                <tr>
                                    <td class="auto-style1">Company Name</td>
                                    <td><asp:TextBox ID="txtComapny" runat="server" CssClass="form-control" placeholder="Enter Comapny Name"></asp:TextBox></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td><asp:RequiredFieldValidator ID="ReqCompany" runat="server" ErrorMessage="*Required" 
                                       ForeColor="Red" ControlToValidate="txtComapny" ValidationGroup="abc" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Name</td>
                                    <td><asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Owner Name"></asp:TextBox></td>
                                    <td>&nbsp;</td>
                                </tr>
                                 <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2"><asp:RequiredFieldValidator ID="ReqName" runat="server" ErrorMessage="*Required"
                                        ForeColor="Red" ControlToValidate="txtName" ValidationGroup="abc" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">EmailID</td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="Enter EmailID"></asp:TextBox>
                                    </td>
                                    <td class="auto-style3">Mobile No.</td>
                                    <td>
                                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Enter Mobile Number"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2"><asp:RequiredFieldValidator ID="ReqMail" runat="server" ErrorMessage="*Required" ControlToValidate="txtMail" 
                                       ForeColor="Red" ValidationGroup="abc" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" 
                                           ControlToValidate="txtMail" ForeColor="Red" ValidationGroup="abc" ErrorMessage="*Invalid EmailID" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                                    <td><asp:RequiredFieldValidator ID="ReqMob" runat="server" ErrorMessage="*Required" ControlToValidate="txtMobile" 
                                       ForeColor="Red" ValidationGroup="abc" Display="Dynamic"></asp:RequiredFieldValidator>
                                         <asp:RegularExpressionValidator ID="RegMob" runat="server" Display="Dynamic" 
                                           ControlToValidate="txtMobile" ForeColor="Red" ValidationGroup="abc" ErrorMessage="*Invalid Mobile No." 
                                             ValidationExpression="^((\+){0,1}91(\s){0,1}(\-){0,1}(\s){0,1}){0,1}9[0-9](\s){0,1}(\-){0,1}(\s){0,1}[1-9]{1}[0-9]{7}$"></asp:RegularExpressionValidator>
                                    
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Land Line1</td>
                                    <td>
                                        <asp:TextBox ID="txtLandline1" runat="server" CssClass="form-control" placeholder="*Optional"></asp:TextBox>
                                    </td>
                            
                                </tr>
                               
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td> &nbsp; <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" 
                                           ControlToValidate="txtLandline1" ForeColor="Red" ValidationGroup="abc" ErrorMessage="*Invalid Phone No." 
                                             ValidationExpression="^[0-9]\d{3,6}-\d{5,8}$ "></asp:RegularExpressionValidator>--%>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td style="float: right">
                                            <asp:Button ID="Button1" runat="server" Text="Save & Continue" CssClass="btn btn-success" OnClick="Button1_Click" ValidationGroup="abc" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Clear" CssClass="btn btn-danger"></asp:Button>

                                        </td>
                                </tr>
                               
                            </table>
                                </fieldset>
                                </asp:Panel>
                                <hr />
                               

                       <asp:Panel ID="pnl2" runat="server">
                  <fieldset style="text-align:left">
                        <h2 style="font-size:large;color:darkorange">
                            Location Information
                        </h2>
                       
                            
                                <hr />
                                <table style="width: 100%; text-align:left">
                                <tr>
                                    <td class="auto-style1">Address</td>
                                    <td colspan="2"><asp:TextBox ID="txtAdress" runat="server" CssClass="form-control" placeholder="Enter Address"></asp:TextBox></td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2"><asp:RequiredFieldValidator ID="ReqAddress" runat="server" ErrorMessage="*Required" 
                                       ForeColor="Red" ControlToValidate="txtAdress" ValidationGroup="Location" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Street</td>
                                    <td colspan="2"><asp:TextBox ID="txtstreet" runat="server" CssClass="form-control" placeholder="Enter Street"></asp:TextBox></td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Building</td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txtBuilding" runat="server" CssClass="form-control" placeholder="Enter Building"></asp:TextBox>
                                    </td>
                                    <td class="auto-style3"> &nbsp;&nbsp;LandMark</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="txtLandmark" runat="server" CssClass="form-control" placeholder="Land Mark"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">State</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" 
                                           OnDataBound="DropDownList1_DataBound" DataTextField="StateName" DataValueField="ID" CssClass="form-control">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="SELECT [ID], [StateName] FROM [tbl_Statemaster]"></asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;&nbsp;City</td>
                                    <td colspan="2">
                                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2"
                                           OnDataBound="DropDownList2_DataBound"  DataTextField="CityName" DataValueField="ID" CssClass="form-control">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="SELECT [ID], [CityName] FROM [tbl_CityMaster]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2"><asp:RequiredFieldValidator ID="ReqState" runat="server" ErrorMessage="*Required" 
                                       ForeColor="Red" ControlToValidate="DropDownList1" InitialValue="0" ValidationGroup="Location" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                    <td colspan="2"><asp:RequiredFieldValidator ID="ReqCity" runat="server" ErrorMessage="*Required" 
                                       ForeColor="Red" ControlToValidate="DropDownList2" InitialValue="0" ValidationGroup="Location" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Pin Code</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="txtPin" runat="server" CssClass="form-control" placeholder="Enter PinCode"></asp:TextBox>
                                    </td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                     <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td style="float: right">
                                            <asp:Button ID="btnSaveLocation" runat="server" Text="Save & Continue" CssClass="btn btn-success" ValidationGroup="Location" OnClick="btnSaveLocation_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnClearLocation" runat="server" Text="Clear" CssClass="btn btn-danger"></asp:Button>

                                        </td>
                                </tr>
                                   
                            </table>
                      </fieldset>
                           </asp:Panel>
                <hr />
                        <asp:Panel ID="pnl3" runat="server">
                            <fieldset style="text-align:left">
                        <h2 style="font-size:large;color:darkorange">
                            Contact Information
                        </h2>
                  
                           
                                <hr />
                                <table style="width: 100%; text-align: left">
                                    
                                    <tr>
                                        <td class="auto-style1">Contact Person</td>
                                        <td colspan="2">
                                            <asp:TextBox ID="txtContactPerson" runat="server" CssClass="form-control" placeholder="Enter Contact Person"></asp:TextBox></td>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td colspan="2"><asp:RequiredFieldValidator ID="ReqContact" runat="server" ErrorMessage="*Required" 
                                       ForeColor="Red" ControlToValidate="txtContactPerson" ValidationGroup="Contact" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Mobile Number</td>
                                        <td class="auto-style2">
                                            <asp:TextBox ID="txtMobileNumber" runat="server" CssClass="form-control" placeholder="Enter Mobile Number"></asp:TextBox>
                                        </td>
                                        <td class="auto-style3">Emai ID</td>
                                        <td colspan="2">
                                            <asp:TextBox ID="txtCont_Email" runat="server" CssClass="form-control" placeholder="Enter LandLine Number"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td colspan="2"><asp:RequiredFieldValidator ID="ReqMobile" runat="server" ErrorMessage="*Required" 
                                       ForeColor="Red" ControlToValidate="txtMobileNumber" ValidationGroup="Contact" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style1">Web URL</td>
                                        <td colspan="2">
                                            <asp:TextBox ID="txtURL" runat="server" CssClass="form-control" placeholder="Enter Web URL"></asp:TextBox>
                                        </td>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                     <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td style="float: right">
                                            <asp:Button ID="btnSaveContact" runat="server" Text="Save & Continue" CssClass="btn btn-success"  ValidationGroup="Contact" OnClick="btnSaveContact_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnClearContact" runat="server" Text="Clear" CssClass="btn btn-danger"></asp:Button>

                                        </td>
                                </tr>
                                   
                                </table>
                                </fieldset>
                            </asp:Panel>
                    <hr />
                        <asp:Panel ID="pnl4" runat="server">
                        <fieldset style="text-align:left">
                        <h2 style="font-size:large;color:darkorange">
                            Upload Video/Images
                        </h2>
                 
                          
                                <hr />
                                <table style="width: 100%; text-align: left">
                                    <tr>
                                        <td class="auto-style1">Add Images</td>
                                        <td colspan="2">
                                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" /></td>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td colspan="2"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" 
                                       ForeColor="Red" ControlToValidate="FileUpload1" ValidationGroup="Image" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Add Vedios</td>
                                        <td colspan="2">
                                            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" /></td>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                        <td colspan="2">&nbsp;</td>
                                        <td style="float: right">
                                            <asp:Button ID="btnSaveMedia" runat="server" Text="Submit" CssClass="btn btn-success" ValidationGroup="Image" OnClick="btnSaveMedia_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnClearMedia" runat="server" Text="Clear" CssClass="btn btn-danger"></asp:Button>

                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </fieldset>
                            </asp:Panel>
                           
                       
                    
                                </center>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

