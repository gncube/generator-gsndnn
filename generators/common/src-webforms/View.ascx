<<%= openDirective %> Control Language="c#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="<%= fullNamespace %>.View" <%= closeDirective %>>
<<%= openDirective %> Import Namespace="DotNetNuke.Services.Localization" <%= closeDirective %>>
<<%= openDirective %> Register TagPrefix="dnn" TagName="Label" Src="~/controls/labelcontrol.ascx" <%= closeDirective %>>

<asp:Repeater ID="rpt<%= extensionName %>s" runat="server">
    <HeaderTemplate>
        <div id="pnlNo<%= extensionName %>s">
            <div id="NoRecords" runat="server" class="alert alert-info" role="alert" visible="false">
                <<%= openDirective %>=LocalizeString("NoRecords")<%= closeDirective %>>
            </div>
        </div>
    </HeaderTemplate>
    <ItemTemplate>
        <dl class="row">
            <dt class="col-sm-3">Title</dt>
            <dd class="col-sm-9">
                <asp:Label ID="lblTitle" runat="server" Text='<<%= openDirective %>#DataBinder.Eval(Container.DataItem,"Title") <%= closeDirective %>>'></asp:Label>
            </dd>
            <dt class="col-sm-3">Description</dt>
            <dd class="col-sm-9">
                <asp:Label ID="lblDescription" runat="server" Text='<<%= openDirective %>#DataBinder.Eval(Container.DataItem,"Description") <%= closeDirective %>>'></asp:Label>
            </dd>
            <asp:Panel ID="pnlAdmin" runat="server" Visible="false">
                <div class="pull-right">
                    <asp:HyperLink ID="lnkEdit" runat="server" ResourceKey="Edit<%= extensionName %>.Text" Visible="false" Enabled="false">Edit</asp:HyperLink>
                    <asp:LinkButton ID="lnkDelete" runat="server" ResourceKey="Delete<%= extensionName %>.Text" Visible="false" Enabled="false" CommandName="Delete"></asp:LinkButton>
                </div>
            </asp:Panel>
        </dl>
    </ItemTemplate>

</asp:Repeater>
