﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace orm_ornek
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ormdenemeEntities1 : DbContext
    {
        public ormdenemeEntities1()
            : base("name=ormdenemeEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<kullanici> kullanici { get; set; }
        public virtual DbSet<Stok> StokSet { get; set; }
        public virtual DbSet<Markalar> MarkalarSet { get; set; }
        public virtual DbSet<Tedarikciler> TedarikcilerSet { get; set; }
    }
}