
using DotNetNuke.Entities.Modules;
using DotNetNuke.Entities.Modules.Actions;
using DotNetNuke.Services.Exceptions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using <%= fullNamespace %>.Components;
using <%= fullNamespace %>.Entities;

namespace <%= fullNamespace %>
{
    public partial class View : <%= extensionName %>ModuleBase, IActionable
    {
        private bool _has<%= extensionName %>;

        #region Event Handlers

        protected void Page_Load(object sender, EventArgs e)
        {
             try
             {
                  if (!Page.IsPostBack)
                  {
                      BindModule();
                  }
             }
             catch (Exception exc)
             {
                  // Module failed to load
                  Exceptions.ProcessModuleLoadException(this, exc, IsEditable);
             }
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
             ClientResourceManager.RegisterStyleSheet(this.Page, base.ControlPath + "resources/css/module.css");
        }

        #endregion

        #region Private Helper Methods

        private void BindModule()
        {
            var tc = new <%= extensionName %>InfoRepository();
            IEnumerable <<%= extensionName %>Info> items = tc.GetItems(ModuleId);
            _has<%= extensionName %> = items.Any();
            rpt<%= extensionName %>List.DataSource = items;
            rpt<%= extensionName %>List.DataBind();

            LocalizeModule();		
        }
        
        private void LocalizeModule()
        {
            // do nothing
        }

        #endregion

        #region IActionable Implementation

        public ModuleActionCollection ModuleActions
        {
            get
            {
                var actions = new ModuleActionCollection
                {
                    {
                        GetNextActionID(), 
						GetLocalizedString("View.MenuItem.Title"), string.Empty,
                        string.Empty,
                        string.Empty, EditUrl(), false, DotNetNuke.Security.SecurityAccessLevel.Edit, true, false
                    }
                };
                return actions;
            }
        }

        #endregion
    }
}
