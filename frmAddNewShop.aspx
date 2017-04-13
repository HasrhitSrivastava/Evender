<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmAddNewShop.aspx.cs" Inherits="frmAddNewShop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class=" banner2-buying">
        <div class=" container">
            <h3><span>Shop</span></h3>
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
    <!--//header-->
    <div class="dealers">
        <div class="container">

          
            <div class="dealer-top">
                <h4><a href="#">Shops</a></h4>
                <hr />
                <div id="msg" runat="server" class="alert alert-success fade in">
                    <asp:Label ID="mesg" runat="server"></asp:Label>
                </div>
                <div id="error" runat="server" class="alert alert-block alert-danger fade in">
                    <asp:Label ID="lblerror" runat="server"></asp:Label>
                </div>
                <div>
                    <center>
                        <asp:Panel ID="pnlmsg" runat="server">
                         
                                <h2 style="color:yellowgreen">To Register Your Shop You have To Login First.</h2><br />
                                <a href="frmAccount.aspx" style="color:deepskyblue;font-size:14pt">Login Here</a>
                            
                        </asp:Panel>
                    <asp:Panel ID="pnl1" runat="server">
                    
                            <fieldset style="text-align:left">
                                <h2 style="font-size:large;color:darkorange">Basic Information</h2>
                                <hr />
                            <table style="width: 100%; text-align:left">
                                
                                <tr>
                                    <td class="auto-style1">Select Shop Type</td>
                                    <td><asp:DropDownList ID="ddlShopCategory" runat="server" OnDataBound="ddlShopCategory_DataBound"
                                         DataSourceID="SqlDataSource3" CssClass="form-control" DataTextField="sub_category_name" DataValueField="id"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="Select id,sub_category_name from tbl_sub_category where category_id=7"></asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td><asp:RequiredFieldValidator ID="ReqCompany" runat="server" ErrorMessage="*Required" 
                                       ForeColor="Red" ControlToValidate="ddlShopCategory" InitialValue="0" ValidationGroup="abc" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Shop Title</td>
                                    <td><asp:TextBox ID="txtshopTitle" runat="server" CssClass="form-control" placeholder="*Enter Title"></asp:TextBox></td>
                                    <td>&nbsp;</td>
                                </tr>
                                 <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2"><asp:RequiredFieldValidator ID="ReqName" runat="server" ErrorMessage="*Required"
                                        ForeColor="Red" ControlToValidate="txtshopTitle" ValidationGroup="abc" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Owner Name</td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txtOwner" runat="server" CssClass="form-control" placeholder="*Enter Name"></asp:TextBox>
                                    </td>
                                    <td class="auto-style3">Mobile No.</td>
                                    <td>
                                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="*Enter Mobile Number"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2"><asp:RequiredFieldValidator ID="ReqOwner" runat="server" ErrorMessage="*Required" ControlToValidate="txtOwner" 
                                       ForeColor="Red" ValidationGroup="abc" Display="Dynamic"></asp:RequiredFieldValidator>
                                       <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" 
                                           ControlToValidate="txtMail" ForeColor="Red" ValidationGroup="abc" ErrorMessage="*Invalid EmailID" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
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
                                    <td class="auto-style1">EMail ID</td>
                                    <td>
                                        <asp:TextBox ID="txtEmailID" runat="server" CssClass="form-control" placeholder="*EmailID"></asp:TextBox>
                                    </td>
                            
                                </tr>
                               
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>
                                        <asp:RegularExpressionValidator ID="RegMail" runat="server" Display="Dynamic" 
                                           ControlToValidate="txtEmailID" ForeColor="Red" ValidationGroup="abc" ErrorMessage="*Invalid EMailID." 
                                             ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
                            Shop Description
                        </h2>
                       
                            
                                <hr />
                                <table style="width: 100%; text-align:left">
                                <tr>
                                    <td class="auto-style1">Sort Description</td>
                                    <td colspan="2"><asp:TextBox ID="txtSortDescription" runat="server" CssClass="form-control" placeholder="Sort Description"></asp:TextBox></td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2"><asp:RequiredFieldValidator ID="ReqDescription" runat="server" ErrorMessage="*Required" 
                                       ForeColor="Red" ControlToValidate="txtSortDescription" ValidationGroup="Location" Display="Dynamic"></asp:RequiredFieldValidator></td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">About Products</td>
                                    <td colspan="2"><asp:TextBox ID="txtProducts" runat="server" CssClass="form-control" placeholder="Tell Us Somthing about your products"></asp:TextBox></td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Detailed Description</td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txtDetailed" runat="server" CssClass="form-control" placeholder="Detailed Description" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td class="auto-style3"> &nbsp;</td>
                                   
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2"><asp:RequiredFieldValidator ID="ReqDetail" runat="server" ErrorMessage="*Required" ControlToValidate="txtDetailed" 
                                       ForeColor="Red" ValidationGroup="Location" Display="Dynamic"></asp:RequiredFieldValidator> </td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                     <tr>
                                    <td class="auto-style1">&nbsp;&nbsp;Other Information</td>
                                    <td colspan="2"><asp:TextBox ID="txtOther" runat="server" CssClass="form-control" placeholder="Other Information"></asp:TextBox></td>
                                    <td colspan="2">&nbsp;</td>
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
                                    <td class="auto-style1">Select State</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" 
                                           OnDataBound="DropDownList1_DataBound" DataTextField="StateName" DataValueField="ID" CssClass="form-control">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="SELECT [ID], [StateName] FROM [tbl_Statemaster]"></asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;&nbsp;Select City</td>
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
                                    <td><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" 
                                           ControlToValidate="txtPin" ForeColor="Red" ValidationGroup="abc" ErrorMessage="*Must be 6 degits." 
                                             ValidationExpression="\d{6}(-\d{4})?$"></asp:RegularExpressionValidator></td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
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
                                    <td><asp:RequiredFieldValidator ID="ReqURL" runat="server" ErrorMessage="*Required" ControlToValidate="txtURL" 
                                       ForeColor="Red" ValidationGroup="Location" Display="Dynamic"></asp:RequiredFieldValidator>
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" 
                                           ControlToValidate="txtURL" ForeColor="Red" ValidationGroup="abc" ErrorMessage="*Invalid Web URL." 
                                             ValidationExpression="(http(s)?://)?([\w-]+\.)+[\w-]+(/[\w- ;,./?%&=]*)?"></asp:RegularExpressionValidator>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td style="float: right">
                                            <asp:Button ID="btnSaveContact" runat="server" Text="Save & Continue" CssClass="btn btn-success"  ValidationGroup="Location" OnClick="btnSaveContact_Click" />
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

