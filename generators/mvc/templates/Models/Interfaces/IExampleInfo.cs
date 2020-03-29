
using System;

namespace <%= fullNamespace %>.Models
{
    public interface I<%= namespace %>Info
    {
        int <%= namespace %>Id { get; set; }
        int ModuleId { get; set; }
        string Title { get; set; }
        string Description { get; set; }
        int CreatedByUserId { get; set; }
        DateTime CreatedOnDate { get; set; }
        int LastUpdatedByUserId { get; set; }
        DateTime LastUpdatedOnDate { get; set; }
    }
}
