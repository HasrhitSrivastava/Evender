<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        #left {
            width: 50%;
            margin-left: 6px;
            float: left;
        }

        #right {
            width: 49%;
            margin-left: 2px;
            float: left;
        }
    .auto-style1 {
        width: 84px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">Add State</h3>
        </div>
        <div class="panel-body">
            <table style="width: 100%;">

                <tr>
                    <td class="auto-style1">Enter State</td>
                    <td>
                        <asp:TextBox ID="txtStateName" runat="server" CssClass="form-control" Width="435px"></asp:TextBox></td>
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
                        <asp:Button ID="btnSubmit" CssClass="btn btn-lg btn-success" runat="server" Text="Submit" Height="38px" ValidationGroup="btnsubmit" OnClick="btnSubmit_Click" />
                        &nbsp;&nbsp;&nbsp;<asp:Button ID="btnClear" CssClass="btn btn-lg btn-danger" runat="server" Text="Clear" Height="38px" />
                    </td>
                    <td></td>
                </tr>


            </table>
        </div>
    </div>
</asp:Content>

