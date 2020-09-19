
using System.Collections.Generic;
using <%= fullNamespace %>.Components;
using <%= fullNamespace %>.Models;
using <%= fullNamespace %>.Tests;

namespace <%= fullNamespace %>.Services
{
    public class ServiceProxy : ServiceProxyBase
    {
        public ServiceProxy(string baseWebSiteUri)
        {
            baseUri = baseWebSiteUri;
            
            if (!baseUri.EndsWith("/"))
            {
                baseUri += "/";
            }

            fullApiUri = System.IO.Path.Combine(baseUri, "DesktopModules/MVC/<%= namespace %>/<%= extensionName %>/API/Example/");
        }

        public ServiceResponse<string> CreateExample(<%= extensionName %>Info example)
        {
            var result = new ServiceResponse<string>();

            result = ServiceHelper.PostRequest<ServiceResponse<string>>(fullApiUri + "CreateExample", example.ObjectToJson());
            
            return result;   
        }

        public ServiceResponse<List<<%= extensionName %>Info>> GetExamples(int moduleId)
        {
            var result = new ServiceResponse<List<<%= extensionName %>Info>>();

            result = ServiceHelper.GetRequest<ServiceResponse<List<<%= extensionName %>Info>>>(fullApiUri + "GetExamples?moduleId=" + moduleId);

            return result;
        }

        public ServiceResponse<<%= extensionName %>Info> GetExample(int itemId)
        {
            var result = new ServiceResponse<<%= extensionName %>Info>();

            result = ServiceHelper.GetRequest<ServiceResponse<<%= extensionName %>Info>>(fullApiUri + "GetExample?itemId=" + itemId);

            return result;
        }
        
        public ServiceResponse<string> UpdateExample(<%= extensionName %>Info example)
        {
            var result = new ServiceResponse<string>();

            result = ServiceHelper.PostRequest<ServiceResponse<string>>(fullApiUri + "UpdateExample", example.ObjectToJson());

            return result;
        }

        public ServiceResponse<string> DeleteExample(int itemId)
        {
            var result = new ServiceResponse<string>();

            result = ServiceHelper.DeleteRequest<ServiceResponse<string>>(fullApiUri + "DeleteExample?itemId=" + itemId, string.Empty);

            return result;
        }
    }
}
