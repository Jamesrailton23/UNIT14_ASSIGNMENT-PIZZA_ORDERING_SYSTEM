﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Pizza_order_system_databaseEntities : DbContext
    {
        public Pizza_order_system_databaseEntities()
            : base("name=Pizza_order_system_databaseEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<Manager_Account> Manager_Accounts { get; set; }
        public virtual DbSet<Customer_Order> Customer_Orders { get; set; }
        public virtual DbSet<Employee_Session> Employee_Sessions { get; set; }
        public virtual DbSet<Kitchen_Staff_Account> Kitchen_Staff_Accounts { get; set; }
        public virtual DbSet<Customer_Account> Customer_Accounts { get; set; }
        public virtual DbSet<Customer_Session> Customer_Sessions { get; set; }
    }
}
