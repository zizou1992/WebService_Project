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
    
    public partial class ChiTietPhieuNhapEntity
    {
        public Nullable<int> SoLuongNhap { get; set; }
        public Nullable<double> DonGia { get; set; }
        public Nullable<double> TongCongNhap { get; set; }
        public Nullable<int> MaSanPham { get; set; }
        public Nullable<int> MaPhieuNhap { get; set; }
        public int ID { get; set; }
    
        public virtual PhieuNhapEntity PhieuNhap { get; set; }
        public virtual SanPhamEntity SanPham { get; set; }
    }
}
