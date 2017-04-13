<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmhotels.aspx.cs" Inherits="frmhotels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="background-image:url(images/backstage_hotel_header5.jpg);width:100%;height:400px">
        <div class=" container">
            <%--<h3><span>Ho</span>tels</h3>--%>
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
                <h3>Hotels</h3>
                <div class="us-choose">
                    <div class="col-md-6 why-choose">
                        <div class="  ser-grid ">
                            <a href="frmUnderConstruction.aspx" class="hi-icon hi-icon-archive glyphicon">
                                <img src="images/appt_type_hotel_512px_GREY.png" height="60" width="60"  />
                            </a>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>Hotels</h5>
                            <%--<label>The standard chunk of Lorem</label>--%>
                            <p>Search all the Hotels according to your location.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 why-choose">
                        <div class=" ser-grid">
                            <a href="frmUnderConstruction.aspx" class="hi-icon hi-icon-archive glyphicon"><img src="images/appt_type_hotel_512px_GREY.png" height="60" width="60"  /></a>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>Resorts</h5>
                            <%--<label>The standard chunk of Lorem</label>--%>
                            <p>Search all the Resorts according to your location.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="us-choose">
                    <div class="col-md-6 why-choose">
                        <div class=" ser-grid">
                            <a href="frmUnderConstruction.aspx" class="hi-icon hi-icon-archive glyphicon"><img src="images/appt_type_hotel_512px_GREY.png" height="60" width="60"  /></a>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>Cottage</h5>
                            <%--<label>The standard chunk of Lorem</label>--%>
                            <p>Search all the Cottages according to your location, for your small vacation.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 why-choose">
                        <div class=" ser-grid">
                            <a href="frmUnderConstruction.aspx" class="hi-icon hi-icon-archive glyphicon"><img src="images/appt_type_hotel_512px_GREY.png" height="60" width="60"  /></a>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>Caravanserais</h5>
                            <%--<label>The standard chunk of Lorem</label>--%>
                            <p>There are only 6 Caravaserai in India.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
             <%--   <div class="us-choose">
                    <div class="col-md-6 why-choose">
                        <div class=" ser-grid">
                            <a href="frmUnderConstruction.aspx" class="hi-icon hi-icon-archive glyphicon"><img src="images/appt_type_hotel_512px_GREY.png" height="60" width="60"  /></a>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>Blood Bank</h5>
                            <%--<label>The standard chunk of Lorem</label>--%>
                        <%--    <p>
                                Search all the Blood banks according to your location.
                            </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 why-choose">
                        <div class=" ser-grid">
                            <a href="frmUnderConstruction.aspx" class="hi-icon hi-icon-archive glyphicon"><img src="images/appt_type_hotel_512px_GREY.png" height="60" width="60"  /></a>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>Pathology Labs</h5>
                            <%--<label>The standard chunk of Lorem</label>--%>
                        <%--    <p>Search all the Labs according to your location.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>--%>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

