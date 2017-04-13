<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmContactus.aspx.cs" Inherits="frmContactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 133px;
        }

        #main_cont {
            width: 100%;
            margin-top: 1px;
        }

        #left_cont {
            width: 60%;
            margin-top: 1px;
            margin-left: 0px;
            float: left;
        }

        #right_cont {
            width: 39%;
            margin-top: 1px;
            margin-left: 0px;
            float: left;
        }
    </style>
  <script type="text/javascript"
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6v5-2uaq_wusHDktM9ILcqIrlPtnZgEk&sensor=false">
</script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places">
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class=" banner5-buying">
        <div class=" container">
            <h3><span>Contact</span> us</h3>
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
    <div class="about">
        <div class="choose-us">
            <div class="container">
                <div>
                    <h2>Be in Touch</h2>
                    <hr />
                    <div id="map_canvas" style="width: 500px; height: 400px"></div>
                    <div id="main_cont">
                        <div id="left_cont">
                            <center>
                    <fieldset style="text-align:left">
<table style="width:100%;"><tr><td class="auto-style1">Name</td><td>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
    </td><td>&nbsp;</td></tr><tr><td class="auto-style1">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td class="auto-style1">Email ID</td><td>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
    </td><td>&nbsp;</td></tr><tr><td class="auto-style1">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td class="auto-style1">Contact Number</td><td>
    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
    </td><td>&nbsp;</td></tr><tr><td class="auto-style1">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td class="auto-style1">Message</td><td rowspan="7">
    <asp:TextBox ID="TextBox5" runat="server" Height="102px" CssClass="form-control"></asp:TextBox>
    </td><td>&nbsp;</td></tr>
   
</table><br /><p style="text-align:right"><asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success"></asp:Button>
    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Reset" CssClass="btn btn-danger"></asp:Button>
              </p>
                    </fieldset>
                        </center>
                        </div>
                    </div>
                    <div id="right_cont">
                        <fieldset>
                            <p>Company: M1Logix technologies Pvt. Ltd.</p>
                            <p>Lucknow Near Picaddily hotel Alambagh</p>
                            <p>Lucknow(Utter Pradesh)</p>
                            <p>Contact Details: (+91)7618838899</p>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

