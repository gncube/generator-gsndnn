<<%= openDirective %> Control Language="C#" AutoEventWireup="true" CodeBehind="Edit.ascx.cs" Inherits="<%= fullNamespace %>.Edit" <%= closeDirective %>>
<<%= openDirective %> Import Namespace="DotNetNuke.Services.Localization" <%= closeDirective %>>
<<%= openDirective %> Register TagPrefix="dnn" TagName="Label" Src="~/controls/labelcontrol.ascx" <%= closeDirective %>>
<<%= openDirective %> Register TagPrefix="dnn" Assembly="DotNetNuke.Web" Namespace="DotNetNuke.Web.UI.WebControls" <%= closeDirective %>>

  <div class="dnnForm">
        <asp:Label runat="server" CssClass="dnnFormMessage dnnFormInfo" ResourceKey="Intro" />
    <div class="dnnFormItem dnnFormHelp dnnClear">
        <p class="dnnFormRequired"><asp:Label runat="server" ResourceKey="Required Indicator" /></p>
    </div>
    <fieldset>
      <div class="dnnFormItem">
          <dnn:label ID="lblTitle" runat="server"></dnn:label>
          <asp:TextBox ID="txtTitle" CssClass="dnnFormRequired" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rqValTitle" CssClass="dnnFormMessage dnnFormError" runat="server"
              ControlToValidate="txtTitle" ErrorMessage="Title is required"></asp:RequiredFieldValidator>
      </div>
      <div class="dnnFormItem">
          <dnn:label ID="lblDescription" runat="server" />
          <asp:TextBox ID="txtDescription" CssClass="dnnFormRequired" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rqValDescription" CssClass="dnnFormMessage dnnFormError" runat="server"
              ControlToValidate="txtDescription" ErrorMessage="Description is required"></asp:RequiredFieldValidator>
      </div>

      <ul class="dnnActions dnnClear">
          <li>
              <asp:LinkButton ID="btnSubmit" CssClass="dnnPrimaryAction" CausesValidation="true" onclick="btnSubmit_Click"
                  runat="server">Save</asp:LinkButton>
          </li>
          <li>
              <asp:LinkButton ID="btnCancel" CssClass="dnnSecondaryAction" CausesValidation="false" onclick="btnCancel_Click"
                  runat="server">Cancel</asp:LinkButton>
          </li>
      </ul>
    </fieldset>
  </div>
