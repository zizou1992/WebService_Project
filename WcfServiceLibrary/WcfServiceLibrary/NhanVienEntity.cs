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
    
    public partial class NhanVienEntity
    {
        public NhanVienEntity()
        {
            this.DonDatHang = new HashSet<DonDatHangEntity>();
            this.PhieuNhap = new HashSet<PhieuNhapEntity>();
        }
    
        public int MaNhanVien { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string HoTen { get; set; }
        public Nullable<System.DateTime> NgaySinh { get; set; }
        public string SoDT { get; set; }
        public string DiaChi { get; set; }
        public string Email { get; set; }
        public Nullable<int> ChucVu { get; set; }
    
        public virtual ChucVuEntity ChucVu1 { get; set; }
        public virtual ICollection<DonDatHangEntity> DonDatHang { get; set; }
        public virtual ICollection<PhieuNhapEntity> PhieuNhap { get; set; }
    }
}
