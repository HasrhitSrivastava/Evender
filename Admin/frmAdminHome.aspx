<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAdminHome.aspx.cs" Inherits="Admin_frmAdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 129px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <h2>Add Place</h2>
        <hr />
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">Enter State Name:</td>
                <td><asp:TextBox ID="txtStateName" runat="server" CssClass="form-control" Width="335px"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="reqtxtUserName" runat="server" ErrorMessage="* Mendetory Field" ControlToValidate="txtStateName"
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
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" CssClass="btn btn-lg btn-success" runat="server" Text="Submit" Height="38px" ValidationGroup="btnsubmit" />
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="btnClear" CssClass="btn btn-lg btn-danger" runat="server" Text="Clear" Height="38px" />
                </td>
                <td></td>
            </tr>
        </table>
    </div>
</asp:Content>

