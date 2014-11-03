using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinTier.DAL;
namespace WinTier.BLL
{
    public class ChiTietPhieuNhap_BIZ
    {
        private string _MaSanPham;
        private string _MaPhieuNhap;
        private string _ID;
        private string _SoLuongNhap;
        private string _TongCongNhap;
        private string _DonGia;
        public string MaPhieuNhap
        {
            get { return _MaPhieuNhap; }
            set { _MaPhieuNhap = value; }
        }
        public string MaSanPham
        { get { return _MaSanPham; } set { _MaSanPham = value; } }
        public string ID
        { get { return _ID; } set { _ID = value; } }
        public string SoLuongNhap
        { get { return _SoLuongNhap; } set { _SoLuongNhap = value; } }
        public string DonGia
        { get { return _DonGia; } set { _DonGia = value; } }
        public string TongCongNhap
        { get { return _TongCongNhap; } set { _TongCongNhap = value; } }
        public void Insert()
        {
            ChiTietPhieuNhap_DAL.InsertChiTietPhieuNhap(this);
        }
    }
}
