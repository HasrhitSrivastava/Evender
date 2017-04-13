<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmRestaurent.aspx.cs" Inherits="frmRestaurent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class=" banner-buying">
        <div class=" container">
            <h3><span>Rest</span>aurant</h3>
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
            <%--<!--initiate accordion-->--%>
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
    <div class="container">



        <!---->
        <div class="top-grid" style="padding-top: 50px">
            <h3>Top Categories</h3>
            <div class="grid-at">
                <div class="col-md-3 grid-city">
                    <div class="grid-lo">

                        <a href="frmUnderConstruction.aspx">
                            <figure class="effect-layla">
                                <img class=" img-responsive" src="images/bekry.jpg" alt="">
                                <figcaption>
                                    <h4 class="effect1">Bekery</h4>

                                </figcaption>
                            </figure>



                        </a>
                    </div>
                </div>
                <div class="col-md-6 grid-city">
                    <div class="grid-lo">
                        <a href="frmUnderConstruction.aspx">
                            <figure class="effect-layla">
                                <img class=" img-responsive" src="images/vege.jpg" alt="">
                                <figcaption>
                                    <h4 class="effect1">Veg</h4>

                                </figcaption>
                            </figure>


                        </a>
                    </div>
                </div>
                <div class="col-md-3 grid-city">
                    <div class="grid-lo">
                        <a href="frmUnderConstruction.aspx">
                            <figure class="effect-layla">
                                <img class=" img-responsive" src="images/Coffee.jpg" alt="">
                                <figcaption>
                                    <h4 class="effect1">Coffee</h4>

                                </figcaption>
                            </figure>


                        </a>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="deal-top-top">
        <div class="col-md-3 top-deal-top">
            <div class="grid-lo">
                <a href="frmUnderConstruction.aspx">
                    <figure class="effect-layla">
                        <img class=" img-responsive" src="images/bars.jpg" alt="">
                        <figcaption>
                            <h4 class="effect1">Drinks</h4>

                        </figcaption>
                    </figure>


                </a>
            </div>
        </div>
        <div class="col-md-3 top-deal-top">
            <div class="grid-lo">
                <a href="frmUnderConstruction.aspx">
                    <figure class="effect-layla">
                        <img class=" img-responsive" src="images/dessert.jpg" alt="">
                        <figcaption>
                            <h4 class="effect1">Dessert</h4>

                        </figcaption>
                    </figure>


                </a>
            </div>
        </div>
        <div class="col-md-3 top-deal-top">
            <div class="grid-lo">


                <a href="frmUnderConstruction.aspx">
                    <figure class="effect-layla">
                        <img class=" img-responsive" src="images/pizza.jpg" alt="">
                        <figcaption>
                            <h4 class="effect1">Pizza</h4>

                        </figcaption>
                    </figure>


                </a>

            </div>
        </div>
        <div class="col-md-3 top-deal-top">
            <div class="grid-lo">
                <a href="frmUnderConstruction.aspx">
                    <figure class="effect-layla">
                        <img class=" img-responsive" src="images/nonv.jpg" alt="">
                        <figcaption>
                            <h4 class="effect1">Non Veg</h4>

                        </figcaption>
                    </figure>


                </a>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="future">
            <h3 style="padding-top: 20%">Top Restaurants</h3>
            <div class="content-bottom-in">
                <ul id="flexiselDemo1">
                    <li>
                        <div class="project-fur">
                            <a href="frmUnderConstruction.aspx">
                                <img class="img-responsive" src="images/veg1.jpg" alt="" />
                            </a>
                            <div class="fur">
                                <div class="fur1">

                                    <h6 class="fur-name"><a href="frmUnderConstruction.aspx">Barbeque Nation</a></h6>
                                    <span>Gomti Nagar</span>
                                </div>

                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="project-fur">
                            <a href="frmUnderConstruction.aspx">
                                <img class="img-responsive" src="images/veg.jpg" alt="" />
                            </a>
                            <div class="fur">
                                <div class="fur1">

                                    <h6 class="fur-name"><a href="frmUnderConstruction.aspx">The Urban Terrace</a></h6>
                                    <span>Gomti Nagar</span>
                                </div>

                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="project-fur">
                            <a href="frmUnderConstruction.aspx">
                                <img class="img-responsive " src="images/r1.jpg" alt="" />
                            </a>
                            <div class="fur">
                                <div class="fur1">

                                    <h6 class="fur-name"><a href="frmUnderConstruction.aspx">Sky Mirage</a></h6>
                                    <span>Hazratganj</span>
                                </div>

                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="project-fur">
                            <a href="frmUnderConstruction.aspx">
                                <img class="img-responsive" src="images/kitchen.jpg" alt="" />
                            </a>
                            <div class="fur">
                                <div class="fur1">
                                    <%--<span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>--%>
                                    <h6 class="fur-name"><a href="frmUnderConstruction.aspx">Dastarkhwan</a></h6>
                                    <span>Lalbagh</span>
                                </div>
                                <%--<div class="fur2">
			                               	<span>2 BHK</span>
			                             </div>--%>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="project-fur">
                            <a href="frmUnderConstruction.aspx">
                                <img class="img-responsive" src="images/r41.jpg" alt="" />
                            </a>
                            <div class="fur">
                                <div class="fur1">

                                    <h6 class="fur-name"><a href="frmUnderConstruction.aspx">Jannat</a></h6>
                                    <span>Gomti Nagar</span>
                                </div>

                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="project-fur">
                            <a href="frmUnderConstruction.aspx">
                                <img class="img-responsive" src="images/kabab.jpg" alt="" />
                            </a>
                            <div class="fur">
                                <div class="fur1">

                                    <h6 class="fur-name"><a href="frmUnderConstruction.aspx">Royal Sky</a></h6>
                                    <span>Lalbagh</span>
                                </div>

                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="project-fur">
                            <a href="frmUnderConstruction.aspx">
                                <img class="img-responsive" src="images/aryan.jpg" alt="" />
                            </a>
                            <div class="fur">
                                <div class="fur1">

                                    <h6 class="fur-name"><a href="frmUnderConstruction.aspx">Aryan</a></h6>
                                    <span>Hazratganj</span>
                                </div>

                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="project-fur">
                            <a href="frmUnderConstruction.aspx">
                                <img class="img-responsive" src="images/kitchen.jpg" alt="" />
                            </a>
                            <div class="fur">
                                <div class="fur1">

                                    <h6 class="fur-name"><a href="frmUnderConstruction.aspx">Kitchen</a></h6>
                                    <span>Indira Nagar</span>
                                </div>

                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="project-fur">
                            <a href="frmUnderConstruction.aspx">
                                <img class="img-responsive" src="images/coff.jpg" alt="" />
                            </a>
                            <div class="fur">
                                <div class="fur1">

                                    <h6 class="fur-name"><a href="frmUnderConstruction.aspx">Cassia</a></h6>
                                    <span>Hazratganj</span>
                                </div>

                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="project-fur">
                            <a href="frmUnderConstruction.aspx">
                                <img class="img-responsive" src="images/dessrts.jpg" alt="" />
                            </a>
                            <div class="fur">
                                <div class="fur1">

                                    <h6 class="fur-name"><a href="frmUnderConstruction.aspx">Royal Cafe</a></h6>
                                    <span>Hazratganj</span>
                                </div>

                            </div>
                        </div>
                    </li>
                </ul>

                <script type="text/javascript">
                    $(window).load(function () {
                        $("#flexiselDemo1").flexisel({
                            visibleItems: 4,
                            animationSpeed: 1000,
                            autoPlay: true,
                            autoPlaySpeed: 3000,
                            pauseOnHover: true,
                            enableResponsiveBreakpoints: true,
                            responsiveBreakpoints: {
                                portrait: {
                                    changePoint: 480,
                                    visibleItems: 1
                                },
                                landscape: {
                                    changePoint: 640,
                                    visibleItems: 2
                                },
                                tablet: {
                                    changePoint: 768,
                                    visibleItems: 3
                                }
                            }
                        });

                    });
                </script>
                <script type="text/javascript" src="js/jquery.flexisel.js"></script>
            </div>
        </div>
    </div>
    <div class="premium">
        <%--<div class="pre-top">
		<h5>Lorem Ipsum is simply dummy</h5>
		<p>$7.24 Lacs-4.36 Lacs 2-3 BHK, Lorem Ipsum</p>
	</div>--%>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

