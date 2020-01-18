<<%= openDirective %> Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" <%= closeDirective %>>
<<%= openDirective %> Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" <%= closeDirective %>>
<div class="ContainerWrapper">
    <div class="dnnClear">
        <h2><dnn:TITLE ID="dnnTITLE" runat="server" class="Head dnnLeft" /></h2>
        
        <div class="ContainerPane" runat="server" id="ContentPane"></div>
    </div>
</div>

