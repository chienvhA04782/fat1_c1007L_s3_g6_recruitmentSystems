//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Share
{
    using System;
    using System.Collections.Generic;
    
    public partial class Admin
    {
        public Admin()
        {
            this.Vacancys = new HashSet<Vacancy>();
        }
    
        public int Admin_Id { get; set; }
        public string Admin_FullName { get; set; }
        public string Admin_Account { get; set; }
        public string Admin_Password { get; set; }
        public string Admin_Role { get; set; }
        public Nullable<bool> Admin_Status { get; set; }
    
        public virtual ICollection<Vacancy> Vacancys { get; set; }
    }
}
