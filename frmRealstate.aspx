<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmRealstate.aspx.cs" Inherits="Resturent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class=" banner5-buying">
        <div class=" container">
            <h3><span>Real</span> Estate</h3>
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
    <div class="about">
        <div class="choose-us">
            <div class="container">
                <h3>Real Estate</h3>
                <div class="us-choose">
                    <div class="col-md-6 why-choose">
                        <div class="  ser-grid ">
                            <a href="frmUnderConstruction.aspx" class="hi-icon hi-icon-archive glyphicon glyphicon-home"></a>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>Buy</h5>

                            <p>Residentai Buyer, Commercial Buyer.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 why-choose">
                        <div class=" ser-grid">
                            <a href="frmUnderConstruction.aspx" class="hi-icon hi-icon-archive glyphicon glyphicon-home"></a>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>Sell</h5>

                            <p>Residentai Seller, Commercial Seller.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="us-choose">
                    <div class="col-md-6 why-choose">
                        <div class=" ser-grid">
                            <a href="frmUnderConstruction.aspx" class="hi-icon hi-icon-archive glyphicon glyphicon-home"></a>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>Rent</h5>

                            <p>Residentai Rental, Commercial Rental.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 why-choose">
                        <div class=" ser-grid">
                            <a href="frmUnderConstruction.aspx" class="hi-icon hi-icon-archive glyphicon glyphicon-home"></a>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>Hostels</h5>

                            <p>Search all the Hostels here. </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="us-choose">
                    <div class="col-md-6 why-choose">
                        <div class=" ser-grid">
                            <a href="frmUnderConstruction.aspx" class="hi-icon hi-icon-archive glyphicon glyphicon-home"></a>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>Apartment</h5>

                            <p>
                                Search all the Apartments here.
                            </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 why-choose">
                        <div class=" ser-grid">
                            <a href="frmUnderConstruction.aspx" class="hi-icon hi-icon-archive glyphicon glyphicon-home"></a>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>Dealers</h5>

                            <p>Search all the Dealers here.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>


            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

