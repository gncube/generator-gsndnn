<!-- JS Global Compulsory -->
<dnn:dnnjsinclude runat="server" filepath="assets/vendor/jquery-migrate/jquery-migrate.min.js" forceprovider="DnnFormBottomProvider" priority="119" pathnamealias="SkinPath" />
<dnn:dnnjsinclude runat="server" filepath="assets/vendor/popper.js/popper.min.js" forceprovider="DnnFormBottomProvider" priority="120" pathnamealias="SkinPath" />
<dnn:dnnjsinclude runat="server" filepath="assets/vendor/bootstrap/bootstrap.min.js" forceprovider="DnnFormBottomProvider" priority="130" pathnamealias="SkinPath" />
<dnn:dnnjsinclude runat="server" filepath="assets/vendor/fontawesome-free/js/all.js" forceprovider="DnnFormBottomProvider" priority="132" pathnamealias="SkinPath" />



<!-- JS Implementing Plugins -->
<dnn:dnnjsinclude runat="server" filepath="assets/vendor/hs-megamenu/src/hs.megamenu.js" forceprovider="DnnFormBottomProvider" priority="140" pathnamealias="SkinPath" />
<dnn:dnnjsinclude runat="server" filepath="assets/vendor/appear.js" forceprovider="DnnFormBottomProvider" priority="141" pathnamealias="SkinPath" />
<dnn:dnnjsinclude runat="server" filepath="assets/vendor/slick-carousel/slick/slick.js" forceprovider="DnnFormBottomProvider" priority="143" pathnamealias="SkinPath" />
<dnn:dnnjsinclude runat="server" filepath="assets/vendor/fancybox/jquery.fancybox.min.js" forceprovider="DnnFormBottomProvider" priority="144" pathnamealias="SkinPath" />


<!-- JS Unify -->
<dnn:dnnjsinclude runat="server" filepath="assets/js/hs.core.js" forceprovider="DnnFormBottomProvider" priority="150" pathnamealias="SkinPath" />
<dnn:dnnjsinclude runat="server" filepath="assets/js/components/hs.header.js" forceprovider="DnnFormBottomProvider" priority="151" pathnamealias="SkinPath" />
<dnn:dnnjsinclude runat="server" filepath="assets/js/helpers/hs.hamburgers.js" forceprovider="DnnFormBottomProvider" priority="152" pathnamealias="SkinPath" />
<dnn:dnnjsinclude runat="server" filepath="assets/js/components/hs.dropdown.js" forceprovider="DnnFormBottomProvider" priority="153" pathnamealias="SkinPath" />
<dnn:dnnjsinclude runat="server" filepath="assets/js/components/hs.popup.js" forceprovider="DnnFormBottomProvider" priority="154" pathnamealias="SkinPath" />
<dnn:dnnjsinclude runat="server" filepath="assets/js/components/hs.carousel.js" forceprovider="DnnFormBottomProvider" priority="155" pathnamealias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="assets/js/components/hs.scrollbar.js" ForceProvider="DnnFormBottomProvider" Priority="156" PathNameAlias="SkinPath" />
<dnn:dnnjsinclude runat="server" filepath="assets/js/components/hs.go-to.js" forceprovider="DnnFormBottomProvider" priority="157" pathnamealias="SkinPath" />

<!-- JS Customization -->
<dnn:dnnjsinclude runat="server" filepath="assets/js/custom.js" forceprovider="DnnFormBottomProvider" priority="160" pathnamealias="SkinPath" />

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
            afterOpen: function () {
                $(this).find('input[type="search"]').focus();
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

