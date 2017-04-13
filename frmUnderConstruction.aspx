<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmUnderConstruction.aspx.cs" Inherits="frmUnderConstruction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
  <%--  <div class=" banner5-buying">
        <div class=" container">
            <h3><span>Adver</span> tise</h3>
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
    </div>--%>
    <div class="dealers">
        <div class="container">
            <div class="dealer-top">
                <center>
                <h3 style="color:red">Site Under Maintenance</h3><br />
                <h4>----------We Will Back Soon------------</h4>
                    <br />
                    <a href="frmHome.aspx" style="color:blue">Back To Home Page</a>
                    </center>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

