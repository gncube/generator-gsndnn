<!--#include file="partials/blogmagazine/_registers.ascx" -->
<!--#include file="partials/blogmagazine/_styles.ascx" -->


<main>
    <!--#include file="partials/blogmagazine/_header.ascx" -->

    <!-- Promo Block -->
    <!--#include file="partials/blogmagazine/_promoblock.ascx" -->
    <!-- End Promo Block -->

    <!-- Start : Content Areas -->
    <section>
        <!--#include file = "partials/_content-panes.ascx" -->
    </section>
    <!-- End : Content Areas -->

    <!-- Start : Content Pane : full width -->
    <div class="container g-pt-100 g-pb-70">
        <div class="row">
            <div class="col-md-12" id="ContentPane" runat="server" />
        </div>
    </div>

    <!--// End : Content Pane : full width -->

    <!-- Footer -->
    <!--#include file="partials/blogmagazine/_footer.ascx" -->
    <!-- End Footer -->

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

<!--#include file="partials/blogmagazine/_scripts.ascx" -->
