<<%= openDirective %> Control Language="c#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="<%= fullNamespace %>.View" <%= closeDirective %>>
<<%= openDirective %> Import Namespace="DotNetNuke.Services.Localization" <%= closeDirective %>>
<<%= openDirective %> Register TagPrefix="dnn" TagName="Label" Src="~/controls/labelcontrol.ascx" <%= closeDirective %>>
<<%= openDirective %> Register TagPrefix="dnn" Assembly="DotNetNuke.Web" Namespace="DotNetNuke.Web.UI.WebControls" <%= closeDirective %>>

<asp:Repeater ID="rpt<%= extensionName %>List" runat="server">
    <HeaderTemplate>
        <div id="pnl_<%= extensionName %>_Items">
            <div id="NoRecords" runat="server" visible="false">
                <<%= openDirective %>=LocalizeString("NoRecords")<%= closeDirective %>>
            </div>
    </HeaderTemplate>
    <ItemTemplate>
        <asp:Label ID="lblTitle" runat="server" CssClass="" Text='<<%= openDirective %>#DataBinder.Eval(Container.DataItem,"Title").ToString() <%= closeDirective %>>'></asp:Label>
        <asp:Label ID="lblDescription" CssClass="" runat="server" Text='<<%= openDirective %>#DataBinder.Eval(Container.DataItem,"Description").ToString() <%= closeDirective %>>'></asp:Label>
        
        <asp:Panel ID="pnlAdmin" CssClass="admin-actions" runat="server" Visible="false">
            <asp:HyperLink ID="lnkEdit" runat="server" ResourceKey="EditItem.Text" Visible="false" Enabled="false" />
            <asp:LinkButton ID="lnkDelete" runat="server" ResourceKey="DeleteItem.Text" Visible="false" Enabled="false" CommandName="Delete" />
        </asp:Panel>
    </ItemTemplate>
    <FooterTemplate>

    </FooterTemplate>
</asp:Repeater>

