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
    
    public partial class DonDatHangEntity
    {
        public DonDatHangEntity()
        {
            this.ChiTietDonHang = new HashSet<ChiTietDonHangEntity>();
        }
    
        public int MaDonDatHang { get; set; }
        public Nullable<System.DateTime> NgayTao { get; set; }
        public Nullable<System.DateTime> NgayGiao { get; set; }
        public string GhiChu { get; set; }
        public Nullable<int> MaKhachHang { get; set; }
        public string TenKhachHang { get; set; }
        public string EmailKhachHang { get; set; }
        public string TenNguoiTT { get; set; }
        public string DiaChiTT { get; set; }
        public string DienThoaiTT { get; set; }
        public string TenNguoiNhan { get; set; }
        public string DiaChiNhan { get; set; }
        public string DienThoaiNhan { get; set; }
        public Nullable<int> TrangThai { get; set; }
        public Nullable<double> TongTien { get; set; }
        public Nullable<int> MaNhanVien { get; set; }
    
        public virtual ICollection<ChiTietDonHangEntity> ChiTietDonHang { get; set; }
        public virtual NhanVienEntity NhanVien { get; set; }
        public virtual TrangThaiHoaDonEntity TrangThaiHoaDon { get; set; }
        public virtual UserEntity User { get; set; }
    }
}
