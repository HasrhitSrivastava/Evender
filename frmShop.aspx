<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmShop.aspx.cs" Inherits="frmShop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class=" banner2-buying">
        <div class=" container">
            <h3><span>Shop</span></h3>
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
    <!--Dealers-->
    <div class="dealers">
        <div class="container">
            <div class="top-deal1" style="float: right">

                <h2><a style="color: yellowgreen; font-size: 22px" href="frmAddNewShop.aspx">Join Us By Registering Your Shop</a></h2>


            </div>
            <%--<h3>Dealers</h3>--%>
            <%--<div class="dealer">
		<h4>Find The Right Dealer For You</h4>
		<div class="dealer-grid">
			<div class="col-sm-4 dealer-grid1">
				<div class="dealer-grid-top">
					<span>1</span>
					<h6><a href="single.html">Lorem Ipsum is simply dummy text </a></h6>
					<div class="clearfix"> </div>
				</div>
				<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
			</div>
			<div class="col-sm-4 dealer-grid1">
				<div class="dealer-grid-top">
					<span>2</span>
					<h6><a href="single.html">Lorem Ipsum is simply dummy text</a></h6>
					<div class="clearfix"> </div>
				</div>
				<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
			</div>
			<div class="col-sm-4 dealer-grid1">
				<div class="dealer-grid-top">
					<span>3</span>
					<h6><a href="single.html">Lorem Ipsum is simply dummy text</a></h6>
					<div class="clearfix"> </div>
				</div>
				<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>--%>
            <div class="dealer-top">
                <h4><a href="frmAddNewShop.aspx">Shops</a></h4>
                <div class="deal-top-top">
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/gshop.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Grocery Shops</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/cake.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Cake & Dessert Shops</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/book.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Book Shops</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top ">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/ele.jpg" class="img-responsive zoom-img" alt="" height="100" width="300"></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Electronic Shops</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="deal-top-top">
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/gift.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Flowers & Gift shops</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/med.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Medical Stores</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/vegg.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Fruits & Vegetables</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/cloth.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Clothes Shops</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                </div>



            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

