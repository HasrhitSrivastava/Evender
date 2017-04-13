<%@ Page Title="" Language="C#" MasterPageFile="~/IndexMasterPage.master" AutoEventWireup="true" CodeFile="frmeducation.aspx.cs" Inherits="frmeducation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class=" banner1-buying">
        <div class=" container">
            <h3><span>Edu</span>cation</h3>
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

            <div class="top-deal1" style="float:right">
                
                    <h2><a style="color: yellowgreen; font-size: 22px" href="frmUnderConstruction.aspx">Add New Institution</a></h2>
                

            </div>
            <br />
            <div class="dealer-top">

                <hr />
                <h4 style="color:darkorange"><a href="#"> Collages</a></h4><hr />
                <div class="deal-top-top">
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/engineer.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Engineering Collages
                                        <%--<asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>--%></a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/mba.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">
                                       Management Collages</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/law.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Law Collages</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top ">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/doctor.jpg" class="img-responsive zoom-img" alt="" height="100" width="300"></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Medical Collages</a></h5>

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
                                <img src="images/arts.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Arts Collages</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/comm.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Commerce Collages</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/science.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Science Collages</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                </div>
                <h4 style="margin-top: 70px;color:darkorange"><a href="#">Schools</a></h4><hr />
                <div class="deal-top-top">
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/cbse1.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">CBSE Board</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/icse.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">ICSE Board</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/up.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">UP Board</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/eng.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">English Medium</a></h5>

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
                                <img src="images/public.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Public Schools </a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <h4 style="margin-top: 70px"><a href="#">Coachings</a></h4><hr />
                <div class="deal-top-top">
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/bank.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Banking</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/engi.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Engineering </a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/medical.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Medical</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/10.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Schools </a></h5>

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
                                <img src="images/mb.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">MBA</a></h5>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 top-deal-top">
                        <div class=" top-deal">
                            <a href="frmUnderConstruction.aspx" class="mask">
                                <img src="images/commerce.jpg" class="img-responsive zoom-img" alt=""></a>
                            <div class="deal-bottom">
                                <div class="top-deal1">
                                    <h5><a href="frmUnderConstruction.aspx">Commerce</a></h5>

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

