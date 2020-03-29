
using DotNetNuke.Data;
using DotNetNuke.Framework;
using System.Collections.Generic;
using <%= fullNamespace %>.Data;
using <%= fullNamespace %>.Models;

namespace <%= fullNamespace %>.Data
{
    public interface I<%= namespace %>InfoRepository
    {
        void CreateItem(<%= namespace %>Info t);
        void DeleteItem(int itemId, int moduleId);
        void DeleteItem(<%= namespace %>Info t);
        IEnumerable<<%= namespace %>Info> GetItems(int moduleId);
        <%= namespace %>Info GetItem(int itemId, int moduleId);
        void UpdateItem(<%= namespace %>Info t);
    }

    public class <%= namespace %>InfoRepository : ServiceLocator<I<%= namespace %>InfoRepository, <%= namespace %>InfoRepository>, I<%= namespace %>InfoRepository
    {
        public void CreateItem(<%= namespace %>Info t)
        {
            using (IDataContext ctx = DataContext.Instance())
            {
                var rep = ctx.GetRepository<<%= namespace %>Info>();
                rep.Insert(t);
            }
        }

        public void DeleteItem(int itemId, int moduleId)
        {
            var t = GetItem(itemId, moduleId);
            DeleteItem(t);
        }

        public void DeleteItem(<%= namespace %>Info t)
        {
            using (IDataContext ctx = DataContext.Instance())
            {
                var rep = ctx.GetRepository<<%= namespace %>Info>();
                rep.Delete(t);
            }
        }

        public IEnumerable<<%= namespace %>Info> GetItems(int moduleId)
        {
            IEnumerable<<%= namespace %>Info> t;
            using (IDataContext ctx = DataContext.Instance())
            {
                var rep = ctx.GetRepository<<%= namespace %>Info>();
                t = rep.Get(moduleId);
            }
            return t;
        }

        public <%= namespace %>Info GetItem(int itemId, int moduleId)
        {
            <%= namespace %>Info t;
            using (IDataContext ctx = DataContext.Instance())
            {
                var rep = ctx.GetRepository<<%= namespace %>Info>();
                t = rep.GetById(itemId, moduleId);
            }
            return t;
        }

        public void UpdateItem(<%= namespace %>Info t)
        {
            using (IDataContext ctx = DataContext.Instance())
            {
                var rep = ctx.GetRepository<<%= namespace %>Info>();
                rep.Update(t);
            }
        }

        protected override System.Func<I<%= namespace %>InfoRepository> GetFactory()
        {
            return () => new <%= namespace %>InfoRepository();
        }
    }
}
