using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WinTier.DAL;

namespace WinTier.BLL
{
    public class ChiTietDonHang_BIZ
    {
        #region[DeclearVariables]
        private string _ID;
        private string _MaDonDatHang;
        private string _MaSanPham;
        private string _Gia;
        private string _SoLuong;
        private string _TongCong;
        private string _TenSP;
        #endregion
        #region[PublicVariables]
        public string ID
        {
            get { return _ID; }
            set { _ID = value; }
        }
        public string MaDonDatHang
        {
            get { return _MaDonDatHang; }
            set { _MaDonDatHang = value; }
        }
        public string MaSanPham
        {
            get { return _MaSanPham; }
            set { _MaSanPham = value; }
        }
        public string Gia
        {
            get { return _Gia; }
            set { _Gia = value; }
        }
        public string SoLuong
        {
            get { return _SoLuong; }
            set { _SoLuong = value; }
        }
        public string TongCong
        {
            get { return _TongCong; }
            set { _TongCong = value; }
        }
        public string TenSP
        {
            get { return _TenSP; }
            set { _TenSP = value; }
        }
        #endregion
       // public static ChiTietDonHang_DAL db = new ChiTietDonHang_DAL();
        public static List<ChiTietDonHang_BIZ> GetAll()
        {
            return ChiTietDonHang_DAL.GetAllCTDonHang();
        }
        public static List<ChiTietDonHang_BIZ> GetCTDHByID(string id)
        {
            return ChiTietDonHang_DAL.GetByID(id);
        }
        public void Insert()
        {
            ChiTietDonHang_DAL.InsertCTDonHang(this);
        }
      /*  public static ChiTietDonHang_DAL db = new ChiTietDonHang_DAL();
        #region[XemChiTiet]
        public DataTable XemCTDonHang(string id)
        {
            return db.XemChiTietID(id);
        }
        #endregion
        #region[GetByAll]
        public static List<ChiTietDonHang_BIZ> GetAll()
        {
            return db.GetByAll();
        }
        #endregion
        #region[GetByTop]
        public static List<ChiTietDonHang_BIZ> GetByTop(string Top, string Where, string Order)
        {
            return db.GetByTop(Top, Where, Order);
        }
        #endregion
        #region[GetByID]
        public static List<ChiTietDonHang_BIZ> GetById(string Id)
        {
            return db.GetByID(Id);
        }
        #endregion
        #region[Them]
        public static bool Them(ChiTietDonHang_BIZ data)
        {
            return db.Them(data);
        }
        #endregion
        #region[Xoa]
        public static bool Xoa(string Id)
        {
            return db.Xoa(Id);
        }
        #endregion
        #region[Sua]
        public static bool Sua(ChiTietDonHang_BIZ data)
        {
            return db.Sua(data);
        }
        #endregion
        #region[IDataReader]
        public ChiTietDonHang_BIZ CTDHIDataReader(IDataReader dr)
        {
            ChiTietDonHang_BIZ obj = new ChiTietDonHang_BIZ();
            obj.ID = (dr["ID"] is DBNull) ? string.Empty : dr["ID"].ToString();
            obj.MaDonDatHang = (dr["MaDonDatHang"] is DBNull) ? string.Empty : dr["MaDonDatHang"].ToString();
            obj.MaSanPham = (dr["MaSanPham"] is DBNull) ? string.Empty : dr["MaSanPham"].ToString();
            obj.SoLuong = (dr["SoLuong"] is DBNull) ? string.Empty : dr["SoLuong"].ToString();
            obj.Gia = (dr["Gia"] is DBNull) ? string.Empty : dr["Gia"].ToString();
            obj.TongCong = (dr["TongCong"] is DBNull) ? string.Empty : dr["TongCong"].ToString();
            return obj;
        }
        #endregion */
    }
}