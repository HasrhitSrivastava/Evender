<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAddCategories.aspx.cs" Inherits="Admin_frmAddCategories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">Add Education Category</h3>
        </div>
        <div class="panel-body">
            <table style="width: 100%;">

                <tr>
                    <td class="auto-style1">Category Name</td>
                    <td>
                        <asp:TextBox ID="txtCategory" runat="server" CssClass="form-control" Width="435px"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="ReqtxtCategory" runat="server" ErrorMessage="* Mendetory Field" ControlToValidate="txtCategory"
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

