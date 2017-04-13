<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testPage.aspx.cs" Inherits="testPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="janu/css/bootstrap.css" />
    <link rel="stylesheet" href="janu/css/main.css" />
    <link rel="stylesheet" href="janu/css/theme.css" />
    <link rel="stylesheet" href="janu/css/MoneAdmin.css" />
    <link rel="stylesheet" href="janu/css/font-awesome.css" />
    <script src="css-pop.js"></script>
    <link href="styles.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 128px;
        }

        .auto-style2 {
            width: 136px;
        }

        .auto-style3 {
            width: 74px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">



        <div id="container">



            <div id="mainContent">

                <!--POPUP-->

                <div id="blanket" style="display: none;"></div>
                <div id="popUpDiv" style="display: none;">

                    <a href="#" onclick="popup('popUpDiv')">Click to Close CSS Pop Up</a>
                </div>
                <a href="#" onclick="popup('popUpDiv')">Click to Open CSS Pop Up</a>
            </div>
            <!-- end #container -->
        </div>







        <%-- <div>
            <div class="panel-body">
                            <ul class="nav nav-pills">
                                <li class=""><a href="#home-pills" data-toggle="tab">Home</a>
                                </li>
                                <li class=""><a href="#profile-pills" data-toggle="tab">Profile</a>
                                </li>
                                <li class=""><a href="#messages-pills" data-toggle="tab">Messages</a>
                                </li>
                                <li class="active"><a href="#settings-pills" data-toggle="tab">Settings</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade" id="home-pills">
                                    <h4>Home Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                                <div class="tab-pane fade" id="profile-pills">
                                    <h4>Profile Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                                <div class="tab-pane fade" id="messages-pills">
                                    <h4>Messages Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                                <div class="tab-pane fade active in" id="settings-pills">
                                    <h4>Settings Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                            </div>
                        </div>
        </div>
         <script src="janu/jquery-2.0.3.min.js"></script>
     <script src="janu/bootstrap.min.js"></script>
    <script src="janu/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <table style="width: 100%; text-align:left">
                                <tr>
                                    <td class="auto-style1">Add New Keywords</td>
                                    <td colspan="2"><asp:TextBox ID="txtKeyWords" runat="server" CssClass="form-control" placeholder="Enter Comapny Name"></asp:TextBox></td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Other Information</td>
                                    <td colspan="2"><asp:TextBox ID="txtInfo" runat="server" CssClass="form-control" placeholder="Enter Owner Name"></asp:TextBox></td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Mobile Number</td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txtBuilding" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style3">Land Line</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="txtLandmark" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                
                                <tr>
                                    <td class="auto-style1">Web URL</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="txtPin" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                    <td colspan="2">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td colspan="2">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="Button" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>--%>
    </form>
</body>
</html>
