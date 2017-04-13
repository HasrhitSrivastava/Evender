<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmAccount.aspx.cs" Inherits="frmAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 169px;
        }

        #right_Account {
            width: 46%;
            float: left;
            margin-left: 2px;
            margin-top: 2px;
            align-content: center;
        }

        #left_Account {
            width: 53%;
            float: left;
            margin-left: 2px;
            margin-top: 2px;
            align-content: center;
        }

        .auto-style2 {
            width: 190px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

<div class=" banner1-buying">
        <div class=" container">
            <h3><span>Account</span></h3>
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

            <div class="top-deal1">
                <h5><a href="#">My Account</a></h5>

            </div>

            <br />
            <hr />
            <br />
            <div id="msg" runat="server" class="alert alert-success fade in">
                <asp:Label ID="mesg" runat="server"></asp:Label>
            </div>
            <div id="error" runat="server" class="alert alert-block alert-danger fade in">
                <asp:Label ID="lblerror" runat="server"></asp:Label>
            </div>
            <div id="right_Account">
                <asp:Panel ID="Panel1" runat="server" Width="100%" Height="400px">
                    <fieldset>
                        <h2 style="color: forestgreen">Login Form</h2>
                        <hr />
                        <br />
                        <table style="width: 100%;">
                            <tr>
                                <td class="auto-style2">User Name</td>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"></span>
                                        <asp:TextBox ID="txtLoginUser" runat="server" CssClass="form-control" Width="338px"></asp:TextBox>
                                    </div>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="reqLoginUserName" runat="server" ErrorMessage="*Please Enter User Name"
                                        ControlToValidate="txtLoginUser" Display="Dynamic" ValidationGroup="log" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Password</td>
                                <td>
                                    <div class="input-group">
                                        <span class="input-group-addon"></span>
                                        <asp:TextBox ID="txtLoginPassword" runat="server" CssClass="form-control" Width="338px"
                                            TextMode="Password"></asp:TextBox>
                                    </div>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="reqLoginPassword" runat="server" ErrorMessage="*Please Enter Password"
                                        ControlToValidate="txtLoginPassword" Display="Dynamic" ValidationGroup="log" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp</td>
                                <td>
                                    <asp:CheckBox ID="chkRem" runat="server" />
                                    Remeber Password</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td style="text-align: right">
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success" ValidationGroup="log" OnClick="btnLogin_Click" />
                                    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Reset" CssClass="btn btn-danger" OnClick="Button1_Click" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>
                                    <asp:LinkButton ID="lnkbtnForgot" runat="server">Forgot Password?</asp:LinkButton></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </fieldset>
                </asp:Panel>
            </div>
            <div id="left_Account">
                <asp:Panel ID="Panel2" runat="server" Width="100%">
                    <fieldset>
                        <h2 style="color: forestgreen">Registration Form</h2>
                        <hr />
                        <br />

                        <table style="width: 100%;">
                            <tr>
                                <td class="auto-style1">Register As</td>
                                <td>
                                    <asp:DropDownList ID="ddlUserType" runat="server" Width="349px" CssClass="form-control"
                                        DataSourceID="SqlDataSource1" DataTextField="UserType" DataValueField="ID" OnDataBound="ddlUserType_DataBound">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EvenderConnectionString %>" SelectCommand="select ID,UserType from tbl_UserType where id !=1"></asp:SqlDataSource>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Please Select User Type"
                                        ControlToValidate="ddlUserType" InitialValue="0" Display="Dynamic" ValidationGroup="reg" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <asp:UpdatePanel ID="upPanel" runat="server">
                                    <ContentTemplate>

                                        <td class="auto-style1">User Name</td>
                                        <td>
                                            <asp:TextBox ID="txtUserName" runat="server" AutoPostBack="true" OnTextChanged="txtUserName_TextChanged" CssClass="form-control" Width="349px"></asp:TextBox></td>
                                        <td>&nbsp;</td>

                                        </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:Image ID="imgUsr" runat="server" Visible="false" />

                                    <asp:Label ID="lblUsr" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please Enter User Name"
                                        ControlToValidate="txtUserName" Display="Dynamic" ValidationGroup="reg" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>&nbsp;</td>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </tr>
                            <tr>
                                <td class="auto-style1">Email ID</td>
                                <td>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Width="349px"></asp:TextBox></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please Enter EmailID"
                                        ControlToValidate="txtEmail" Display="Dynamic" ValidationGroup="reg" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegEEmail" runat="server" ErrorMessage="*Please Provide Valid EmailID."
                                        ControlToValidate="txtEmail" Display="Dynamic" ValidationGroup="reg" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$">

                                    </asp:RegularExpressionValidator>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Name</td>
                                <td>
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Width="349px"></asp:TextBox></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Please Enter Name"
                                        ControlToValidate="txtName" Display="Dynamic" ValidationGroup="reg" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Contact No.</td>
                                <td>
                                    <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" Width="349px"></asp:TextBox></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Please Enter Contact No."
                                        ControlToValidate="txtContact" Display="Dynamic" ValidationGroup="reg" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegEContact" runat="server" ErrorMessage="*Please Provide Valid Contact No."
                                        ControlToValidate="txtContact" Display="Dynamic" ValidationGroup="reg" ForeColor="Red"
                                        ValidationExpression="^((\+){0,1}91(\s){0,1}(\-){0,1}(\s){0,1}){0,1}9[0-9](\s){0,1}(\-){0,1}(\s){0,1}[1-9]{1}[0-9]{7}$">

                                    </asp:RegularExpressionValidator>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Address</td>
                                <td>
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Width="349px"></asp:TextBox></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Please Enter Address"
                                        ControlToValidate="txtAddress" Display="Dynamic" ValidationGroup="reg" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Password</td>
                                <td>
                                    <asp:TextBox ID="txtPasssword" runat="server" CssClass="form-control" Width="349px" TextMode="Password"></asp:TextBox></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Please Enter Password"
                                        ControlToValidate="txtPasssword" Display="Dynamic" ValidationGroup="reg" ForeColor="Red"></asp:RequiredFieldValidator></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Confirm Password</td>
                                <td>
                                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" Width="349px" TextMode="Password"></asp:TextBox></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Please Confirm Password"
                                        ControlToValidate="txtConfirmPassword" Display="Dynamic" ValidationGroup="reg" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic"
                                        ControlToValidate="txtConfirmPassword" ControlToCompare="txtPasssword" ForeColor="Red" ErrorMessage="* Both Password Should be Same"></asp:CompareValidator>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td style="text-align: right">
                                    <asp:Button ID="btnRegister" runat="server" Text="Register" ValidationGroup="reg" CssClass="btn btn-success" OnClick="btnRegister_Click" />&nbsp;&nbsp;
                                    <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-danger" OnClick="btnClear_Click" /></td>
                                <td></td>
                            </tr>
                        </table>
                    </fieldset>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

