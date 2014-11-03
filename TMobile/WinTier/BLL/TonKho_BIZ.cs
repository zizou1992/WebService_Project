using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinTier.DAL;

namespace WinTier.BLL
{
    public class TonKho_BIZ
    {
        private string _MaSanPham;
        private string _NgayTon;
        private string _SoLuongTon;
        private string _TenSP;
        public string MaSanPham
        { get { return _MaSanPham; } set { _MaSanPham = value; } }
        public string NgayTon
        { get { return _NgayTon; } set { _NgayTon = value; } }
        /*public string sNgayTon
        {
            get { return NgayTon.ToShortDateString(); }
        }*/
        public string SoLuongTon
        { get { return _SoLuongTon; } set { _SoLuongTon = value; } }
        public string TenSP
        {
            get { return _TenSP; }
            set { _TenSP = value; }
        }
        public void Insert()
        {
            TonKho_DAL.InsertTonKho(this);
        }
        public void CapNhatThem()
        {
            TonKho_DAL.CapNhatThem(this);
        }
        public void CapNhatXuat()
        {
            TonKho_DAL.CapNhatXuat(this);
        }
        public void Update()
        {
            TonKho_DAL.UpdateTonKho(this);
        }
        public int KiemTraSPTonKho(string masp)
        {
            return TonKho_DAL.KiemTraSPTonKho(masp);
        }
        public int KiemTraSoLuong(string masp)
        {
            return TonKho_DAL.KiemTraSoLuong(masp);
        }
        public static List<TonKho_BIZ> GetByTop(string Top, string Where, string Order)
        {
            return TonKho_DAL.GetByTop(Top, Where, Order);
        }
        public static List<TonKho_BIZ> ThongKeTonKho(string Where)
        {
            return TonKho_DAL.ThongKe(Where);
        }
        public static List<TonKho_BIZ> GetAll()
        {
            return TonKho_DAL.GetAll();
        }
    }
}
