<!--#include file="partials/_registers.ascx" -->
<!--#include file="partials/_styles.ascx" -->

<main>
    <!--#include file="partials/_header-v1.ascx" -->


    <!-- End : Content Areas -->
    <!-- Start : Content Pane : full width -->
    <div class="container g-pt-20 g-pb-40">
        <div class="row">
            <div class="col-md-12" id="ContentPane" runat="server" />
        </div>
    </div>
    <!-- Start : Content Areas -->
    <!--// End : Content Pane : full width -->
    
    <section>
        <!--#include file = "partials/_content-panes.ascx" -->
    </section>

    <!-- Footer -->
    <!--#include file="partials/_footer.ascx" -->
    <!-- End Footer -->


    <!-- Go to Top -->
      <a class="js-go-to u-go-to-v1 g-width-40 g-height-40 g-color-primary g-bg-main-opacity-0_5 g-bg-main--hover g-bg-main--focus g-font-size-12 rounded" href="#" 
      data-type="fixed" data-position='{
       "bottom": 15,
       "right": 15
     }' data-offset-top="400" data-compensation="#js-header" data-show-effect="zoomIn">
        <i class="hs-icon hs-icon-arrow-top"></i>
      </a>
     <!-- End Go to Top -->

</main>

<!--#include file="partials/_scripts.ascx" -->
