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
    
    public partial class UserEntity
    {
        public UserEntity()
        {
            this.DonDatHang = new HashSet<DonDatHangEntity>();
        }
    
        public int UserID { get; set; }
        public string TenDangNhap { get; set; }
        public string MatKhau { get; set; }
        public Nullable<int> QuyenTaiKhoan { get; set; }
        public string Email { get; set; }
        public string SoDT { get; set; }
        public string DiaChi { get; set; }
        public string CreditCard { get; set; }
        public string CMND { get; set; }
        public string CauHoiBaoMat { get; set; }
        public string CauTraLoi { get; set; }
        public Nullable<bool> DaKichHoat { get; set; }
        public string HoTen { get; set; }
        public Nullable<System.DateTime> NgaySinh { get; set; }
    
        public virtual ICollection<DonDatHangEntity> DonDatHang { get; set; }
    }
}
