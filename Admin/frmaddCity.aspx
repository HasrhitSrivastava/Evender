<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmaddCity.aspx.cs" Inherits="Admin_frmaddCity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 92px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">Add City</h3>
        </div>
        <div class="panel-body">
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">Select State</td>
                    <td>
                        <asp:DropDownList ID="ddlCity" runat="server" Width="435px" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="ID" OnDataBound="ddlCity_DataBound"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="SELECT [ID], [StateName] FROM [tbl_Statemaster]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Mendetory Field" ControlToValidate="ddlcity"
                            ForeColor="Red" ValidationGroup="btnsubmit">

                        </asp:RequiredFieldValidator></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Enter City</td>
                    <td>
                        <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" Width="435px"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="reqtxtUserName" runat="server" ErrorMessage="* Mendetory Field" ControlToValidate="txtcity"
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

