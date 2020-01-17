<!-- Breadcrumbs -->
<section class="g-brd-bottom g-brd-gray-light-v4 g-py-30">
    <div class="container">
        <ul class="d-flex justify-content-between u-list-inline">
            <li class="list-inline-item g-mr-5">
                <a class="u-link-v5 g-color-text g-pr-10" href="<%=DotNetNuke.Common.Globals.NavigateURL(PortalSettings.HomeTabId)%>" title="Navigate to portal homepage"><i class="fa fa-home"></i></a>
            </li>
            /&nbsp;&nbsp;&nbsp;&nbsp;
                <dnn:breadcrumb id="dnnBreadcrumb" runat="server" cssclass="list-inline-item g-mr-15 u-link-v5 g-color-text" rootlevel="0" separator="/&nbsp;&nbsp;&nbsp;" />
            <%--<li class="list-inline-item g-mr-15">
              <a class="u-link-v5 g-color-text g-pr-10" href="#">Pages</a>
              <i class="g-color-gray-light-v2 g-ml-5 fa fa-angle-right"></i>
            </li>
            <li class="list-inline-item g-color-primary">
              <span>Pricing</span>
            </li>--%>
            <li class="list-inline-item ml-auto">
                <a class="u-link-v5 g-brd-around g-brd-gray-light-v4 g-brd-primary--hover g-color-text g-color-primary--hover g-font-weight-500 rounded g-px-30 g-py-10" href="/contact" title="Hire Us page">Hire Us</a>
            </li>
        </ul>
    </div>
</section>
<!-- End Breadcrumbs -->
