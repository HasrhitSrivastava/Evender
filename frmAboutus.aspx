﻿<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmAboutus.aspx.cs" Inherits="frmAboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class=" banner-buying">
        <div class=" container">
            <h3><span>Abo</span>ut</h3>
            <!---->
            <div class="menu-right">
                <ul class="menu">
                    <li class="item1"><a href="#">Menu<i class="glyphicon glyphicon-menu-down"> </i></a>
                        <ul class="cute">
                            <li class="subitem1"><a href="#">Buy </a></li>
                            <li class="subitem2"><a href="#">Rent </a></li>
                            <li class="subitem3"><a href="#">Hostels </a></li>
                            <li class="subitem1"><a href="#">Resale </a></li>
                            <li class="subitem2"><a href="#">Home Loan</a></li>
                            <li class="subitem3"><a href="#">Apartment </a></li>
                            <li class="subitem3"><a href="#">Dealers</a></li>
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
        <%--<div class="about-head">
		<div class="container">
			<h3>About Us</h3>
				<div class="about-in">
					<a href="blog_single.html"><img src="images/at.jpg" alt="image" class="img-responsive ">	</a>			
					<h6 ><a href="blog_single.html">Lorem ipsum dolor sit amet, consectetur adipisci ngelit. Donec nisi sem, vestibulum Etortor tortor in turpis. Proin mauris nulla, rutrum aliquet arcu vel</a></h6>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisi sem, vestibulum ac lobortis quis, aliquet in metus. Suspendi sse a nibh id eros consectetur laoreet. Etiam viverra auctor orci, eu mattis ipsum rutrum nec.
						Etortor tortor in turpis. Proin mauris nulla, rutrum aliquet arcu vel, porttitor varius dolor. Phasellus vitae tincidunt orci, et faucibus eros. Sed dolor sapien, pharetra placerat feugiat.</p>
				</div>
		</div>
	</div>
	<!---->--%>
        <%--<div class="about-middle">
		<div class="container">		
			<div class="col-md-8 about-mid">
				<h4>Lorem ipsum dolor</h4>
				<h6><a href="blog_single.html">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form</a> </h6>
				<p >Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.
					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>
			</div>
			<div class="col-md-4 about-mid1">
				<p>The standard chunk of Lorem Ipsum used since adisipicing elit</p>
				<a href="blog_single.html" class="hvr-sweep-to-right more-in">READ MORE</a>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>--%>
        <!---->
        <!---->
        <div class="choose-us">
            <div class="container">
                <h3>why choose us</h3>
                <div class="us-choose">
                    <div class="col-md-6 why-choose">
                        <div class="  ser-grid ">
                            <i class="hi-icon hi-icon-archive glyphicon glyphicon-pencil"></i>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>beautiful &amp; enjoyable designs</h5>
                            <label>The standard chunk of Lorem</label>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 why-choose">
                        <div class=" ser-grid">
                            <i class="hi-icon hi-icon-archive glyphicon glyphicon-time"></i>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>beautiful &amp; enjoyable designs</h5>
                            <label>The standard chunk of Lorem</label>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="us-choose">
                    <div class="col-md-6 why-choose">
                        <div class=" ser-grid">
                            <i class="hi-icon hi-icon-archive glyphicon glyphicon-cog"></i>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>beautiful &amp; enjoyable designs</h5>
                            <label>The standard chunk of Lorem</label>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 why-choose">
                        <div class=" ser-grid">
                            <i class="hi-icon hi-icon-archive glyphicon glyphicon-file"></i>
                        </div>
                        <div class="ser-top beautiful">
                            <h5>beautiful &amp; enjoyable designs</h5>
                            <label>The standard chunk of Lorem</label>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>

            </div>
        </div>
        <!---->
        <!---->

        <!---->


    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

