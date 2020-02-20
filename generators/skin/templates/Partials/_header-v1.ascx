<!-- Header -->
<header id="js-header" class="u-header u-header--sticky-top u-header--toggle-section u-header--change-appearance">
    <!-- Top Bar -->
    <!--#include file="topbar/_topbar-v1.ascx" -->
    <!-- End Top Bar -->

    <div class="u-header__section u-header__section--light g-bg-white g-transition-0_3 g-py-10">
        <nav class="js-mega-menu navbar navbar-expand-lg g-px-0">
            <div class="container g-px-15">
                <!-- Logo -->
                <dnn:logo id="LogoSM" runat="server" CssClass="navbar-brand g-hidden-lg-up img-fluid" />
                <!-- End Logo -->

                <!-- Responsive Toggle Button -->
                <button class="navbar-toggler navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 ml-auto" type="button"
                    aria-label="Toggle navigation"
                    aria-expanded="false"
                    aria-controls="navBar"
                    data-toggle="collapse"
                    data-target="#navBar">
                    <span class="hamburger hamburger--slider g-pa-0">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </span>
                </button>
                <!-- End Responsive Toggle Button -->

                <!-- Navigation -->
                <div class="collapse navbar-collapse align-items-center flex-sm-row g-pt-10 g-pt-5--lg" id="navBar">
                    <dnn:menu id="menu" menustyle="menus/blogmagazine" runat="server" nodeselector="*"></dnn:menu>
                </div>
                <!-- End Navigation -->
            </div>
        </nav>
    </div>
</header>
<!-- End Header -->
