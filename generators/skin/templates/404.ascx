<!--#include file="assets/includes/_registers.ascx"-->

<!-- Styles Section -->
<!--#include file="assets/includes/styles.ascx"-->
<!-- End Styles Section -->

<main>
    <!-- Start : Header Section -->
    <!--#include file="assets/includes/_header-nologin.ascx"-->
    <!-- End : Header Section -->

    <!-- PageHeader Section -->
    <!--#include file="assets/includes/pageheader.ascx"-->
    <!-- End PageHeader Section -->

    <!-- Start : Content Pane : full width -->
    <div class="container" >
        <div class="row">
            <div class="col-md-12" id="ContentPane" runat="server" />
            </div>
        </div>
    </div>
    <!--// End : Content Pane : full width -->

    <!-- Start : Content Areas -->
    <section>
        <!--#include file = "assets/includes/_content-panes.ascx" -->
    </section>
    <!-- End : Content Areas -->

    <!--/contentWrapper-->
    <!-- Footer Section -->
    <!--#include file="assets/includes/footer.ascx"-->
    <!-- End Footer Section -->

      <!-- Go To -->
      <a class="js-go-to u-go-to-v2" href="#!"
         data-type="fixed"
         data-position='{
           "bottom": 15,
           "right": 15
         }'
         data-offset-top="400"
         data-compensation="#js-header"
         data-show-effect="zoomIn">
        <i class="hs-icon hs-icon-arrow-top"></i>
      </a>
      <!-- End Go To -->
</main>

<div class="u-outer-spaces-helper"></div>

<!-- Scripts Section -->
<!--#include file="assets/includes/scripts.ascx"-->
<!-- End Scripts Section -->



