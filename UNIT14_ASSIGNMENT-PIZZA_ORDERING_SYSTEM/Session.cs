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
    
    public partial class Session
    {
        public int Session_ID { get; set; }
        public Nullable<int> Account_ID_Number { get; set; }
        public Nullable<System.DateTime> Time_Sign_in { get; set; }
        public Nullable<System.DateTime> Time_Sign_Out { get; set; }
    
        public virtual Customer_Account Customer_Account { get; set; }
    }
}
