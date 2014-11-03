using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WinTier.DAL;

namespace WinTier.BLL
{
    public class DonHang_BIZ
    {
        #region[DeclareVariables]
        private string _MaDonDatHang;
        private string _NgayTao;
        private string _NgayGiao;
        private string _GhiChu;
        private string _MaKhachHang;
        private string _TenKhachHang;
        private string _Email;
        private string _TenNguoiTT;
        private string _DiaChiTT;
        private string _SoDTTT;
        private string _TenNguoiNhan;
        private string _DiaChiNhan;
        private string _DienThoaiNhan;
        private string _TrangThai;
        private string _TongTien;
        private string _tt_hd;
        private string _ten_xk;
        private string _XuatKho;
        #endregion
        #region[PublicVariables]
        public string XuatKho
        {
            get { return _XuatKho; }
            set { _XuatKho = value; }
        }
        public string ten_xk
        {
            get { return _ten_xk; }
            set { _ten_xk = value; }
        }
        public string tt_hd
        {
            get { return _tt_hd; }
            set { _tt_hd = value; }
        }
        public string TongTien
        {
            get { return _TongTien; }
            set { _TongTien = value; }
        }
        public string MaDonDatHang
        {
            get { return _MaDonDatHang; }
            set { _MaDonDatHang = value; }
        }
        public string NgayTao
        {
            get { return _NgayTao; }
            set { _NgayTao = value; }
        }
        public string NgayGiao
        {
            get { return _NgayGiao; }
            set { _NgayGiao = value; }
        }
        public string TrangThai
        {
            get { return _TrangThai; }
            set { _TrangThai = value; }
        }
        public string GhiChu
        {
            get { return _GhiChu; }
            set { _GhiChu = value; }
        }
        public string MaKhachHang
        {
            get { return _MaKhachHang; }
            set { _MaKhachHang = value; }
        }
        public string TenKhachHang
        {
            get { return _TenKhachHang; }
            set { _TenKhachHang = value; }
        }
        public string Email
        {
            get { return _Email; }
            set { _Email = value; }
        }
        public string TenNguoiTT
        {
            get { return _TenNguoiTT; }
            set { _TenNguoiTT = value; }
        }
        public string DiaChiTT
        {
            get { return _DiaChiTT; }
            set { _DiaChiTT = value; }
        }
        public string SoDTTT
        {
            get { return _SoDTTT; }
            set { _SoDTTT = value; }
        }
        public string TenNguoiNhan
        {
            get { return _TenNguoiNhan; }
            set { _TenNguoiNhan = value; }
        }
        public string DiaChiNhan
        {
            get { return _DiaChiNhan; }
            set { _DiaChiNhan = value; }
        }
        public string DienThoaiNhan
        {
            get { return _DienThoaiNhan; }
            set { _DienThoaiNhan = value; }
        }
        #endregion
        #region CartControll
        public static DataTable Cart_CreateCartDetail()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("MaSanPham");
            dt.Columns.Add("TenSanPham");
            dt.Columns.Add("SoLuong");
            dt.Columns.Add("Gia");
            dt.Columns.Add("TongCong");
            return dt;
        }
        public static void Cart_AddProduct(ref DataTable cartdetail, string proid, string proname, string Despro, string Color, string Size, string number, string price)
        {
            bool has = false;
            for (int i = 0; i < cartdetail.Rows.Count; i++)
            {
                if (cartdetail.Rows[i]["MaSanPham"].ToString().Equals(proid))
                {
                    has = true;
                    cartdetail.Rows[i]["SoLuong"] = number + 1;
                    // update money
                    cartdetail.Rows[i]["TongCong"] = Convert.ToInt32(number) * Convert.ToDouble(price);
                }
            }
            if (has == false)
            {
                DataRow dr = cartdetail.NewRow();
                dr["MaSanPham"] = proid;
                dr["TenSanPham"] = proname;
                dr["SoLuong"] = number;
                dr["Gia"] = price;
                dr["TongCong"] = Convert.ToInt32(number) * Convert.ToDouble(price);
                cartdetail.Rows.Add(dr);
            }
        }
        public static void Cart_UpdateNumber(ref DataTable cartdetail, string proid, string inumber)
        {
            if (cartdetail.Rows.Count > 0)
            {
                for (int i = 0; i < cartdetail.Rows.Count; i++)
                {
                    if (cartdetail.Rows[i]["MaSanPham"].ToString().Equals(proid))
                    {
                        cartdetail.Rows[i]["SoLuong"] = inumber;
                        // update money
                        cartdetail.Rows[i]["TongCong"] = Convert.ToInt32(inumber) * Convert.ToDouble(cartdetail.Rows[i]["Gia"].ToString());
                        break;
                    }
                }
            }
        }
        public static void Cart_DeleteProduct(ref DataTable cartdetail, string proid)
        {
            if (cartdetail.Rows.Count > 0)
            {
                for (int i = 0; i < cartdetail.Rows.Count; i++)
                {
                    if (cartdetail.Rows[i]["MaSanPham"].ToString().Equals(proid))
                    {
                        cartdetail.Rows.RemoveAt(i);
                        break;
                    }
                }
            }
        }
        #endregion
        public static List<DonHang_BIZ> GetAll()
        {
            return DonHang_DAL.GetAllDonHang();
        }
        public static DonHang_DAL db = new DonHang_DAL();
        public static List<DonHang_BIZ> GetByTop(string Top, string Where, string Order)
        {
            return  db.GetByTop(Top, Where, Order);
        }
        public void Insert()
        {
            DonHang_DAL.InsertDonHang(this); 
        }
        public void CapNhatTTXuatKho()
        {
            DonHang_DAL.CapNhatXuatKho(this);
        }
        public void Update()
        {
            DonHang_DAL.UpdateDonHang(this);
        }
        public static List<DonHang_BIZ> ThongKe(string Where)
        {
            return DonHang_DAL.ThongKe(Where);
        }
       /* public static DonHang_DAL db =new DonHang_DAL();
        #region[GetByAll]
        public static List<DonHang_BIZ> GetAll()
        {
            return db.GetByAll();
        }
        public DataTable GetAllDonHang()
        {
            return db.GetAllDonHang();
        }
        #endregion
        #region[GetByTop]
        public static List<DonHang_BIZ> GetByTop(string Top, string Where, string Order)
        {
            return db.GetByTOP(Top, Where, Order);
        }
        public DataTable GetDonHangByTOP(string Top, string Where, string Order)
        {
            return db.GetDonHangByTOP(Top, Where, Order);
        }
        #endregion
        #region[GetByID]
        public static List<DonHang_BIZ> GetById(string Id)
        {
            return db.GetById(Id);
        }
        #endregion
        #region[Getbyid]
        public DataTable GetByid(string id)
        {
            return db.GetByid(id);
        }
        #endregion
        #region[LocHoaDon]
        public DataTable LocTheoNgay(string ngay)
        {
            return db.LocTheoNgay(ngay);
        }
        public DataTable LocTheoTT(string tt)
        {
            return db.LocTheoTrangThai(tt);
        }
        #endregion
        #region[Them]
        public static bool Them(DonHang_BIZ data)
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
        public static bool Sua(DonHang_BIZ data)
        {
            return db.Sua(data);
        }
        #endregion
        #region[DonHangIDataReader]
        public DonHang_BIZ DonHangIDataReader(IDataReader dr)
        {
            DonHang_BIZ obj = new DonHang_BIZ();
            obj.DiaChiNhan = (dr["DiaChiNhan"] is DBNull) ? string.Empty : dr["DiaChiNhan"].ToString();
            obj.DiaChiTT = (dr["DiaChiTT"] is DBNull) ? string.Empty : dr["DiaChiTT"].ToString();
            obj.DienThoaiNhan = (dr["DienThoaiNhan"] is DBNull) ? string.Empty : dr["DienThoaiNhan"].ToString();
            obj.Email = (dr["EmailKhachHang"] is DBNull) ? string.Empty : dr["EmailKhachHang"].ToString();
            obj.GhiChu = (dr["GhiChu"] is DBNull) ? string.Empty : dr["GhiChu"].ToString();
            obj.MaDonDatHang = (dr["MaDonDatHang"] is DBNull) ? string.Empty : dr["MaDonDatHang"].ToString();
            obj.MaKhachHang = (dr["MaKhachHang"] is DBNull) ? string.Empty : dr["MaKhachHang"].ToString();
            obj.NgayGiao = (dr["NgayGiao"] is DBNull) ? string.Empty : dr["NgayGiao"].ToString();
            obj.NgayTao = (dr["NgayTao"] is DBNull) ? string.Empty : dr["NgayTao"].ToString();
            obj.SoDTTT = (dr["DienThoaiTT"] is DBNull) ? string.Empty : dr["DienThoaiTT"].ToString();
            obj.TenKhachHang = (dr["TenKhachHang"] is DBNull) ? string.Empty : dr["TenKhachHang"].ToString();
            obj.TenNguoiNhan = (dr["TenNguoiNhan"] is DBNull) ? string.Empty : dr["TenNguoiNhan"].ToString();
            obj.TenNguoiTT = (dr["TenNguoiTT"] is DBNull) ? string.Empty : dr["TenNguoiTT"].ToString();
            obj.TrangThai = (dr["TrangThai"] is DBNull) ? string.Empty : dr["TrangThai"].ToString();
            obj.TongTien = (dr["TongTien"] is DBNull) ? string.Format("{0: 0,0 VNĐ}") : dr["TongTien"].ToString();
            return obj;
        }
        #endregion */
    }
}