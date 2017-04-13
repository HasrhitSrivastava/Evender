<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmAddingCollage.aspx.cs" Inherits="frmAddingCollage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 172px;
        }

        .auto-style2 {
            width: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class=" banner1-buying">
        <div class=" container">
            <h3><span>Edu</span>cation</h3>
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
                <h4>Add New Institutes</h4>
                <hr />
                <fieldset style="width: 100%; height: auto">
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style1">Institution Type</td>
                            <td>
                                <asp:DropDownList ID="ddlType" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="InstitueCategory"
                                    CausesValidation="true" DataValueField="ID" AutoPostBack="true" OnDataBound="ddlType_DataBound">
                                </asp:DropDownList>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="SELECT [ID], [InstitueCategory] FROM [tbl_InstituteCategory]"></asp:SqlDataSource>

                            </td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>Courses Offerd</td>
                            <td>

                                <asp:DropDownCheckBoxes ID="ddlCourses" runat="server" CssClass="form-control" AddJQueryReference="true" UseButtons="true" UseSelectAllNode="true">
                                    <Texts SelectBoxCaption="Select Courses" />
                                </asp:DropDownCheckBoxes>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                                    ErrorMessage="* Select Institue" InitialValue="0" ValidationGroup="btnsub" Display="Dynamic"
                                    ControlToValidate="ddlType"></asp:RequiredFieldValidator></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Category</td>
                            <td>
                                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2"
                                    DataTextField="SubCategoryName" CausesValidation="True" DataValueField="ID" OnDataBound="ddlCategory_DataBound">
                                </asp:DropDownList>



                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="SELECT [ID], [SubCategoryName] FROM [tbl_InstSubCategory] where CategoryID=@CategoryID">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddlType" Name="CategoryID" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>



                            </td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>Placements</td>
                            <td>
                                <asp:TextBox ID="txtPlacements" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red"
                                    ErrorMessage="* Select Institue Category" InitialValue="0" ValidationGroup="btnsub" Display="Dynamic"
                                    ControlToValidate="ddlCategory"></asp:RequiredFieldValidator></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Institution Name</td>
                            <td>
                                <asp:TextBox ID="txtInstName" runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>Institution Rank</td>
                            <td>
                                <asp:TextBox ID="txtRank" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ControlToValidate="txtInstName"
                                    ValidationGroup="btnsub" ErrorMessage="* This is Required Field"></asp:RequiredFieldValidator></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Address</td>
                            <td>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>Institution Code</td>
                            <td>
                                <asp:TextBox ID="txtCode" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" ControlToValidate="txtAddress"
                                    ValidationGroup="btnsub" ErrorMessage="* This is Required Field"></asp:RequiredFieldValidator></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Contact Number</td>
                            <td>
                                <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" TextMode="Phone" MaxLength="10"></asp:TextBox></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server" ControlToValidate="txtContact"
                                    ValidationGroup="btnsub" ErrorMessage="* This is Required Field"></asp:RequiredFieldValidator></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">EmailID</td>
                            <td>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat="server" ControlToValidate="txtEmail"
                                    ValidationGroup="btnsub" ErrorMessage="* This is Required Field"></asp:RequiredFieldValidator></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Website URL</td>
                            <td>
                                <asp:TextBox ID="txtUrl" runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Upload Image</td>
                            <td>
                                <asp:FileUpload ID="fileImage" runat="server" CssClass="form-control" />
                            </td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>

                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td>
                                <asp:Button ID="btnsubmitt" runat="server" Text="Save" CssClass="btn btn-default" OnClick="btnsubmitt_Click" ValidationGroup="btnsub" /></td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Label ID="lblmsg" runat="server"></asp:Label></td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </fieldset>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

