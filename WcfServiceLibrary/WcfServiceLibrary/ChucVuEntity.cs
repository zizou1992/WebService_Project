//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WcfServiceLibrary
{
    using System;
    using System.Collections.Generic;
    
    public partial class ChucVuEntity
    {
        public ChucVuEntity()
        {
            this.NhanVien = new HashSet<NhanVienEntity>();
        }
    
        public int MaChucVu { get; set; }
        public string TenChucVu { get; set; }
        public string MoTa { get; set; }
    
        public virtual ICollection<NhanVienEntity> NhanVien { get; set; }
    }
}
