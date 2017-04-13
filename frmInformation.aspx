<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmInformation.aspx.cs" Inherits="frmInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 153px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class=" banner1-buying">
        <div class=" container">
            <h3><span>Edu</span> cation</h3>
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
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Groove" BorderWidth="3px" CellPadding="0" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" CaptionAlign="Top" CellSpacing="8" Width="100%">
                    <EditItemStyle BorderWidth="2px" />
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#0066FF" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <table style="width: 100%;">
                            <tr>
                                <td class="auto-style1" rowspan="3">
                                    <%--<asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/images/Account.jpg" Width="150px" />--%>
                                    <img src='<%#Eval("image")%>' width="100px" height="100px" />
                        <%--<asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />--%>
                                </td>
                                <td><asp:Label ID="Inst_nameLabel" runat="server" Text='<%# Eval("Inst_name") %>' /></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td><p style="color: #CC0000; font-weight: bolder">Contact Info:</p><asp:Label ID="Label1" runat="server" Text='<%# Eval("Inst_Contact") %>' />,
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Inst_Email") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td><p style="color: #CC0000; font-weight: bolder">URL:</p> <asp:Label ID="Label3" runat="server" Text='<%# Eval("Inst_URL") %>' /></td>
                                <td><asp:LinkButton ID="btn1" runat="server" Text="View" CssClass="form-control" Font-Size="Large" ForeColor="#339933"></asp:LinkButton></td>
                            </tr>
                        </table>
                        <%--Inst_name:
                        
                        <br />
                        Inst_address:
                        <asp:Label ID="Inst_addressLabel" runat="server" Text='<%# Eval("Inst_address") %>' />
                        <br />
                        Inst_Contact:
                        <asp:Label ID="Inst_ContactLabel" runat="server" Text='<%# Eval("Inst_Contact") %>' />
                        <br />
                        Inst_Email:
                        <asp:Label ID="Inst_EmailLabel" runat="server" Text='<%# Eval("Inst_Email") %>' />
                        <br />
                        Inst_URL:
                        <asp:Label ID="Inst_URLLabel" runat="server" Text='<%# Eval("Inst_URL") %>' />
                        <br />

                        <br />
                        <br />--%>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="SELECT [Inst_name], [Inst_address], [Inst_Contact], [Inst_Email], [Inst_URL], [image] FROM [InstitueMaster]"></asp:SqlDataSource>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

