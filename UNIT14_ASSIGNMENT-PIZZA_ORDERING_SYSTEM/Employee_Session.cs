//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UNIT14_ASSIGNMENT_PIZZA_ORDERING_SYSTEM
{
    using System;
    using System.Collections.Generic;
    
    public partial class Employee_Session
    {
        public System.Guid Session_ID { get; set; }
        public Nullable<int> Account_ID_Number { get; set; }
        public string Username { get; set; }
        public Nullable<System.DateTime> Time_Of_Login { get; set; }
    
        public virtual Kitchen_Staff_Account Kitchen_Staff_Account { get; set; }
    }
}
