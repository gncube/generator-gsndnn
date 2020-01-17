    <header id="js-header" class="u-header u-header--static u-shadow-v19">
        <!-- Start : Top bar -->
        <div class="u-header__section g-brd-bottom g-brd-gray-light-v4 g-py-18">
            <div class="container">
                <!--#include file = "topbar-nologin.ascx" -->
            </div>
        </div>
        <!--// End Top bar -->

        <div class="u-header__section u-header__section--light g-bg-white g-transition-0_3 g-py-10">
            <nav class="js-mega-menu navbar navbar-expand-lg g-px-0">
                <div class="container g-px-15">
                    <!-- Logo -->
                    <span class="navbar-brand g-hidden-lg-up">
                        <dnn:LOGO runat="server" ID="dnnLOGO" />
                    </span>
                    <!-- End Logo -->

                    <!-- Responsive Toggle Button -->
                    <button class="navbar-toggler navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 ml-auto" type="button" aria-label="Toggle navigation" aria-expanded="false" aria-controls="navBar" data-toggle="collapse" data-target="#navBar">
                        <span class="hamburger hamburger--slider g-pa-0">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </span>
                    </button>
                    <!-- End Responsive Toggle Button -->

                    <!-- Navigation -->
                    <div class="collapse navbar-collapse align-items-center flex-sm-row g-pt-10 g-pt-5--lg" id="navBar">
                        <dnn:MENU ID="MENU" MenuStyle="assets/menus/simple" runat="server"></dnn:MENU>
                    </div>
                    <!-- End Navigation -->
                </div>
            </nav>
        </div>
    </header>