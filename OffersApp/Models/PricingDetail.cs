//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OffersApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PricingDetail
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PricingDetail()
        {
            this.OffersInventories = new HashSet<OffersInventory>();
        }
    
        public int PricingId { get; set; }
        public Nullable<int> Coins { get; set; }
        public Nullable<int> Gems { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OffersInventory> OffersInventories { get; set; }
    }
}
