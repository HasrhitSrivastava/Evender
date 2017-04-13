<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmHome.aspx.cs" Inherits="frmHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class=" header-right">
        <div class=" banner">
            <div class="slider">
                <div class="callbacks_container">
                    <ul class="rslides" id="slider">
                        <li>
                            <div class="banner1">
                                <div class="caption">
                                    <%--<h3><span>vivam</span>us site</h3>
					          	<p>Nunc dignissim risus idi</p>--%>
                                </div>

                            </div>
                        </li>
                        <li>
                            <div class="banner2">
                                <%--<div class="caption">
					          	<h3><span>vivam</span>us site</h3>
					          	<p>Nunc dignissim risus idi</p>
			          		</div>--%>
                            </div>
                        </li>
                        <li>
                            <div class="banner3">
                                <%--<div class="caption">
					          	<h3><span>vivam</span>us site</h3>
					          	<p>Nunc dignissim risus idi</p>
			          		</div>--%>
                            </div>
                        </li>
                        <li>
                            <div class="banner4">
                                <%--<div class="caption">
					          	<h3><span>vivam</span>us site</h3>
					          	<p>Nunc dignissim risus idi</p>
			          		</div>--%>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!--header-bottom-->
    <div class="banner-bottom-top">
        <div class="container">
            <div class="bottom-header">
                <div class="header-bottom">
                    <div class=" bottom-head">
                        <a href="frmShop.aspx">
                            <div class="buy-media">
                                <i class="buy"></i>
                                <h6>Shops</h6>
                            </div>
                        </a>
                    </div>
                    <div class=" bottom-head">
                        <a href="frmHospital.aspx">
                            <div class="buy-media">
                                <i class="rent"></i>
                                <h6>Hospitals</h6>
                            </div>
                        </a>
                    </div>
                    <div class=" bottom-head">
                        <a href="frmRestaurent.aspx">
                            <div class="buy-media">
                                <i class="pg"></i>
                                <h6>Restaurants</h6>
                            </div>
                        </a>
                    </div>
                    <div class=" bottom-head">
                        <a href="frmeducation.aspx">
                            <div class="buy-media">
                                <i class="sell"></i>
                                <h6>Education</h6>
                            </div>
                        </a>
                    </div>
                    <div class=" bottom-head">
                        <a href="frmRealstate.aspx">
                            <div class="buy-media">
                                <i class="loan"></i>
                                <h6>Real Estate</h6>
                            </div>
                        </a>
                    </div>
                    <div class=" bottom-head">
                        <a href="frmhotels.aspx">
                            <div class="buy-media">
                                <i class="apart"></i>
                                <h6>Hotels</h6>
                            </div>
                        </a>
                    </div>
                    <div class=" bottom-head">
                        <a href="frmRepairs.aspx">
                            <div class="buy-media">
                                <i class="deal"></i>
                                <h6>Repairs</h6>
                            </div>
                        </a>
                    </div>

                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Advertise-->
    <div class="content-grid">
        <div class="container">
            <h3>Advertisments</h3>
            <asp:Timer ID="Timer1" runat="server" Interval="1800"></asp:Timer>
            <asp:UpdatePanel ID="up1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
               
                <ContentTemplate>

                    <div class="col-md-4 box_2">
                        <a href="frmRestaurent.aspx" class="mask">
                            <%--<img class="img-responsive zoom-img" src="images/r6.jpg" alt="">--%>
                            <asp:AdRotator
                                ID="AdRotator1" CssClass="img-responsive zoom-img"
                                AdvertisementFile="~/Adds.xml"
                                KeywordFilter="small"
                                runat="server" Width="" />
                        </a>
                        <%--<div class="most-1">
                            <h5><a href="frmRestaurent.aspx">Add1</a></h5>

                        </div>--%>
                    </div>
                    <div class="col-md-4 box_2">
                        <a href="frmeducation.aspx" class="mask">
                            <%-- <img class="img-responsive zoom-img" src="images/b.jpg" alt="">--%>
                            <asp:AdRotator
                                ID="AdRotator2" CssClass="img-responsive zoom-img"
                                AdvertisementFile="~/Adds.xml"
                                KeywordFilter="small"
                                runat="server" />
                        </a>
                      <%--  <div class="most-1">
                            <h5><a href="frmeducation.aspx">Add2</a></h5>
                        </div>--%>
                    </div>
                    <div class="col-md-4 box_2">
                        <a href="frmRealstate.aspx" class="mask">
                            <%--<img class="img-responsive zoom-img" src="images/pi1.jpg" alt="">--%>
                            <asp:AdRotator
                                ID="AdRotator3" CssClass="img-responsive zoom-img"
                                AdvertisementFile="~/Adds.xml"
                                KeywordFilter="small"
                                runat="server" />
                        </a>
                        <%--<div class="most-1">
                            <h5><a href="frmRealstate.aspx">Add3</a></h5>

                        </div>--%>

                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

            <div class="clearfix"></div>
        </div>
    </div>
    <!-- Advertise-->

    <hr />
    <div class="content-grid">
        <div class="container">
            <h3>Most Popular</h3>

            <div class="col-md-4 box_2">
                <a href="frmUnderConstruction.aspx" class="mask">
                    <img class="img-responsive zoom-img" src="images/r6.jpg" alt="">
                </a>
                <div class="most-1">
                    <h5><a href="frmRestaurent.aspx">Restaurant</a></h5>

                </div>
            </div>
            <div class="col-md-4 box_2">
                <a href="frmUnderConstruction.aspx" class="mask">
                    <img class="img-responsive zoom-img" src="images/b.jpg" alt="">
                </a>
                <div class="most-1">
                    <h5><a href="frmeducation.aspx">Education & Training</a></h5>
                </div>
            </div>
            <div class="col-md-4 box_2">
                <a href="frmUnderConstruction.aspx" class="mask">
                    <img class="img-responsive zoom-img" src="images/pi1.jpg" alt="">
                </a>
                <div class="most-1">
                    <h5><a href="frmRealstate.aspx">Real Estate</a></h5>

                </div>

            </div>


            <div class="clearfix"></div>
        </div>
    </div>
    <!--service-->
    <div class="services">
        <div class="container">
            <div>
                <div class="service-top">
                    <h3>Services</h3>
                    <%--<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>--%>
                </div>
                <div class="services-grid">
                    <div class="col-md-6 service-top1">
                        <div class=" ser-grid">
                            <a href="frmeducation.aspx" class="hi-icon hi-icon-archive glyphicon glyphicon-education"></a>
                        </div>
                        <div class="ser-top">
                            <h4>Education & Training</h4>
                            <p>
                                Engineering, Management Collages, Medical Collages, Schools and Coaching Classes.
                            </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 service-top1">
                        <div class=" ser-grid">
                            <a href="frmRealstate.aspx" class="hi-icon hi-icon-archive glyphicon glyphicon-home"></a>
                        </div>
                        <div class="ser-top">
                            <h4>Real Estate</h4>
                            <p>
                                Rent, Sell, Buy, PG, Hostels and Rooms. 
                            </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="services-grid">
                    <div class="col-md-6 service-top1">
                        <div class=" ser-grid">
                            <a href="frmRestaurent.aspx" class="hi-icon hi-icon-archive glyphicon glyphicon-menu-hamburger"></a>
                        </div>
                        <div class="ser-top">
                            <h4>Restaurants</h4>
                            <p>Veg Restaurants, Non Veg Restaurants, Pizza & Burgers, Coffee, Desserts & Bekeries. </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 service-top1">
                        <div class=" ser-grid">
                            <a href="frmHospital.aspx" class="hi-icon hi-icon-archive glyphicon glyphicon-plus-sign"></a>
                        </div>
                        <div class="ser-top">
                            <h4>Hospitals</h4>
                            <p>Doctors, Hospitals, Dentists, Blood Banks, Pathology Labs, Chemists.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="clearfix"></div>
                </div>
                <div class="services-grid">
                    <div class="col-md-6 service-top1">
                        <div class=" ser-grid">
                            <a href="frmhotels.aspx" class="hi-icon hi-icon-archive glyphicon glyphicon-tent"></a>
                        </div>
                        <div class="ser-top">
                            <h4>Hotels</h4>
                            <p>
                                5 Star Hotels, 4 Star Hotels, 3 star Hotels and so on according your conveinence.
                            </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 service-top1">
                        <div class=" ser-grid">
                            <a href="frmShop.aspx" class="hi-icon hi-icon-archive glyphicon glyphicon-shopping-cart"></a>
                        </div>
                        <div class="ser-top">
                            <h4>Shops</h4>
                            <p>Grocery Shops, Book Shops, Clothes Shops, Electronic Shops, Fruits & Vegetables, Gift Shops.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="clearfix"></div>
                </div>
                <div class="services-grid">
                    <div class="col-md-6 service-top1">
                        <div class=" ser-grid">
                            <a href="frmRepairs.aspx" class="hi-icon hi-icon-archive glyphicon glyphicon-cog"></a>
                        </div>
                        <div class="ser-top">
                            <h4>Dealers & Repairs</h4>
                            <p>Mobile Phone & Computer, Car & Motorcycle, AC & Air Cooler, TV & Refrigrator, Inverter & Generator. </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 service-top1">
                        <div class=" ser-grid">
                            <a href="#" class="hi-icon hi-icon-archive glyphicon glyphicon-heart-empty"></a>
                        </div>
                        <div class="ser-top">
                            <h4>Personal Care</h4>
                            <p>Beauty Paurlors, Salons, Spa, Gym, Yoga Classes, Dietitians. </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="clearfix"></div>
                </div>
            </div>

        </div>
    </div>
    <!--//services-->
    <!--features-->
    <div class="content-middle">
        <div class="container">
            <div class="mid-content">
                <h3>the best feature</h3>
                <p>We Have provided venders and users to the easiest way to reach out their daily needs and emergency needs.</p>
                <a class="hvr-sweep-to-right more-in" href="frmUnderConstruction.aspx">Read More</a>
            </div>
        </div>
    </div>
    <div class="content-bottom">
        <div class="container">
            <h3>Testimonials</h3>
            <div class="col-md-6 name-in">
                <div class=" bottom-in">
                    <p class="para-in">Very Helpful and Excellent work by E Venders.</p>
                    <i class="dolor"></i>
                    <div class="men-grid">
                        <a href="frmUnderConstruction.aspx" class="men-top">
                            <img class="img-responsive men-top" src="images/te.jpg" alt=""></a>
                        <div class="men">
                            <span>Shobhit Mittal</span>
                            <p>User</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class=" bottom-in">
                    <p class="para-in">Very Easy and good services provided by E Venders.</p>
                    <i class="dolor"></i>
                    <div class="men-grid">
                        <a href="frmUnderConstruction.aspx" class="men-top">
                            <img class="img-responsive " src="images/te2.jpg" alt=""></a>
                        <div class="men">
                            <span>Namita Agrawal</span>
                            <p>User</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-6  name-on">
                <div class="bottom-in ">
                    <p class="para-in">Very impressive and Easy services. Thank you E Venders.</p>
                    <i class="dolor"></i>
                    <div class="men-grid">
                        <a href="frmUnderConstruction.aspx" class="men-top">
                            <img class="img-responsive " src="images/te1.jpg" alt=""></a>
                        <div class="men">
                            <span>Vaibhav Datta</span>
                            <p>User</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>


