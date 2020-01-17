<!-- JS Global Compulsory -->

<dnn:dnnjsinclude id="popperJS" runat="server" filepath="assets/vendor/popper.min.js" pathnamealias="SkinPath" />
<dnn:dnnjsinclude id="bootstrapJS" runat="server" filepath="assets/vendor/bootstrap/bootstrap.min.js" pathnamealias="SkinPath" />

<!-- JS Implementing Plugins -->
<dnn:dnnjsinclude id="appearJS" runat="server" filepath="assets/vendor/appear.js" pathnamealias="SkinPath" />
<dnn:dnnjsinclude id="hgmegamenuJS" runat="server" filepath="assets/vendor/hs-megamenu/src/hs.megamenu.js" pathnamealias="SkinPath" />
<dnn:dnnjsinclude id="slickcarouselJS" runat="server" filepath="assets/vendor/slick-carousel/slick/slick.js" pathnamealias="SkinPath" />
<dnn:dnnjsinclude id="fancyboxJS" runat="server" filepath="assets/vendor/fancybox/jquery.fancybox.min.js" pathnamealias="SkinPath" />

<!-- JS Unify -->
<dnn:dnnjsinclude id="hscoreJS" runat="server" filepath="assets/js/hs.core.js" pathnamealias="SkinPath" />
<dnn:dnnjsinclude id="hsheaderJS" runat="server" filepath="assets/js/components/hs.header.js" pathnamealias="SkinPath" />
<dnn:dnnjsinclude id="hshamburgerJS" runat="server" filepath="assets/js/helpers/hs.hamburgers.js" pathnamealias="SkinPath" />
<dnn:dnnjsinclude id="hsdropdownJS" runat="server" filepath="assets/js/components/hs.dropdown.js" pathnamealias="SkinPath" />
<dnn:dnnjsinclude id="hscarousel" runat="server" filepath="assets/js/components/hs.carousel.js" pathnamealias="SkinPath" />
<dnn:dnnjsinclude id="hspopupJS" runat="server" filepath="assets/js/components/hs.popup.js" pathnamealias="SkinPath" />
<dnn:dnnjsinclude id="hstogoJS" runat="server" filepath="assets/js/components/hs.go-to.js" pathnamealias="SkinPath" />

<!-- JS Customization -->
<dnn:dnnjsinclude id="customJS" runat="server" filepath="assets/js/custom.js" pathnamealias="SkinPath" />

<!-- JS Plugins Init. -->
<script>
      $(document).on('ready', function () {
        // initialization of header
        $.HSCore.components.HSHeader.init($('#js-header'));
        $.HSCore.helpers.HSHamburgers.init('.hamburger');

        // initialization of MegaMenu
        $('.js-mega-menu').HSMegaMenu();

        // initialization of HSDropdown component
        $.HSCore.components.HSDropdown.init($('[data-dropdown-target]'), {
          afterOpen: function () { $(this).find('input[type="search"]').focus();
          }
        });

          // initialization of carousel 
          $.HSCore.components.HSCarousel.init('[class*="js-carousel"]');

        // initialization of popups
        $.HSCore.components.HSPopup.init('.js-fancybox');

        // initialization of go to
        $.HSCore.components.HSGoTo.init('.js-go-to');
      });
</script>
