<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_service.aspx.cs" Inherits="Admin_add_service" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 247px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 321px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Service Name</td>
                <td>
                    <asp:TextBox ID="Text_name" runat="server" Height="24px" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Contact Number</td>
                <td>
                    <asp:TextBox ID="Text_contact" runat="server" Height="24px" Width="201px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
                <td>
                    <asp:TextBox ID="Text_addrs" runat="server" Height="24px" Width="201px"></asp:TextBox></td>
            </tr>
           
            <tr>
                <td class="auto-style2">City</td>
                <td>
                   <asp:TextBox ID="TextBox_city" runat="server" Height="24px" Width="201px"></asp:TextBox> </td>
            </tr>
            <tr>
                <td class="auto-style2">Sub Category</td>
                <td> <asp:DropDownList ID="ddl_sub" runat="server" Height="24px" Width="201px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td class="auto-style2">Category</td>
                <td> <asp:DropDownList ID="ddl_cat" runat="server" Height="24px" Width="201px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td class="auto-style2">Service Details</td>
                <td><asp:TextBox ID="TextBox5" runat="server" Height="24px" Width="201px" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
             <tr>
                <td class="auto-style2">Website</td>
                <td><asp:TextBox ID="TextBox_website" runat="server" Height="24px" Width="201px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="Submit" Width="102px" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
