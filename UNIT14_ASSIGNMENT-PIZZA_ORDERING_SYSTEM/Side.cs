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
    
    public partial class Side
    {
        public int Sides_ID { get; set; }
        public string Coca_Cola { get; set; }
        public string Pepsi { get; set; }
        public string Water { get; set; }
        public string Nacho_Bites { get; set; }
        public string Mozzarella_Sticks { get; set; }
    
        public virtual Order_Side Order_Side { get; set; }
    }
}
