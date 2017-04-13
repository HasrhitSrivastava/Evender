<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmSubCategory.aspx.cs" Inherits="frmSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">Add Education Sub Category</h3>
        </div>
        <div class="panel-body">
            <table style="width: 100%;">
                 <tr>
                    <td class="auto-style1">Category</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="InstitueCategory" DataValueField="ID" Width="435px" CssClass="form-control"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="SELECT [ID], [InstitueCategory] FROM [tbl_InstituteCategory]"></asp:SqlDataSource>
                      </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Sub Category</td>
                    <td>
                        <asp:TextBox ID="txtsubCategory" runat="server" CssClass="form-control" Width="435px"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="ReqtxtSubCategory" runat="server" ErrorMessage="* Mendetory Field" ControlToValidate="txtsubCategory"
                            ForeColor="Red" ValidationGroup="btnsubmit">

                        </asp:RequiredFieldValidator></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">IsActive</td>
                    <td>
                        <asp:RadioButtonList ID="rbActive" runat="server" RepeatDirection="Horizontal" Height="16px" Width="200px">
                            <asp:ListItem Selected="True">Active</asp:ListItem>
                            <asp:ListItem>DeActive</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" CssClass="btn btn-lg btn-success" runat="server" Text="Submit" Height="38px" ValidationGroup="btnsubmit" OnClick="btnSubmit_Click" />
                        &nbsp;&nbsp;&nbsp;<asp:Button ID="btnClear" CssClass="btn btn-lg btn-danger" runat="server" Text="Clear" Height="38px" />
                    </td>
                    <td></td>
                </tr>


            </table>
        </div>
    </div>
</asp:Content>

