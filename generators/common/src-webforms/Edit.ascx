<<%= openDirective %> Control Language="C#" AutoEventWireup="true" CodeBehind="Edit.ascx.cs" Inherits="<%= fullNamespace %>.Edit" <%= closeDirective %>>
<<%= openDirective %> Import Namespace="DotNetNuke.Services.Localization" <%= closeDirective %>>
<<%= openDirective %> Register TagPrefix="dnn" TagName="Label" Src="~/controls/labelcontrol.ascx" <%= closeDirective %>>

<div class="dnnForm" id="form-edit">
    <asp:Label runat="server" CssClass="dnnFormMessage dnnFormInfo" ResourceKey="Intro" />
    <div class="dnnFormItem dnnFormHelp dnnClear">
        <p class="dnnFormRequired">
            <asp:Label runat="server" ResourceKey="Required Indicator" />
        </p>
    </div>
    <fieldset>
        <div class="dnnFormItem">
            <dnn:Label runat="server" ControlName="txtTitle" ResourceKey="Title" />
            <asp:TextBox runat="server" ID="txtTitle" CssClass="dnnFormRequired" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTitle"
                CssClass="dnnFormMessage dnnFormError" ResourceKey="Title.Required" />
        </div>
        <div class="dnnFormItem">
            <dnn:Label runat="server" ControlName="txtDescription" ResourceKey="Description" />
            <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDescription" />
        </div>
    </fieldset>
    <ul class="dnnActions dnnClear">
        <li>
            <asp:LinkButton runat="server" CssClass="dnnPrimaryAction" ResourceKey="Save" /></li>
        <li>
            <asp:HyperLink runat="server" CssClass="dnnSecondaryAction" NavigateUrl="/" ResourceKey="Cancel" /></li>
    </ul>
</div>
