using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinTier.DAL;
namespace WinTier.BLL
{
    public class SanPham_BIZ
    {
        #region[Declare_Variables]
        private string _MaSanPham;
        private string _MaNSX;
        private string _MaLoai;
        private string _TrangThai;
        private string _TenSanPham;
        private string _MoTaSanPham;
        private string _NgayThem;
        private string _HinhLon;
        private string _HinhNho;
        private string _Gia;
        private string _ManHinh;
        private string _HDH;
        private string _BoXuLy;
        private string _BoNho;
        private string _3G;
        private string _Wlan;
        private string _Camera;
        private string _TinhNang;
        private List<SanPham_BIZ> _SanPhams;
        #endregion
        #region PublicVariables
        public string MaSanPham
        {
            get { return _MaSanPham; }
            set { _MaSanPham = value; }
        }
        public string MaNSX
        {
            get { return _MaNSX; }
            set { _MaNSX = value; }
        }
        public string MaLoai
        {
            get { return _MaLoai; }
            set { _MaLoai = value; }
        }
        public string TenSanPham
        {
            get { return _TenSanPham; }
            set { _TenSanPham = value; }
        }
        public string MoTaSanPham
        {
            get { return _MoTaSanPham; }
            set { _MoTaSanPham = value; }
        }
        public string NgayThem
        {
            get { return _NgayThem; }
            set { _NgayThem = value; }
        }
        public string HinhLon
        {
            get { return _HinhLon; }
            set { _HinhLon = value; }
        }
        public string HinhNho
        {
            get { return _HinhNho; }
            set { _HinhNho = value; }
        }
        public string Gia
        {
            get { return _Gia; }
            set { _Gia = value; }
        }
        public string HDH
        {
            get { return _HDH; }
            set { _HDH = value; }
        }
        public string BoXuLy
        {
            get { return _BoXuLy; }
            set { _BoXuLy = value; }
        }
        public string BoNho
        {
            get { return _BoNho; }
            set { _BoNho = value; }
        }
       public string TrangThai
        {
            get { return _TrangThai; }
            set { _TrangThai = value; }
        }
        public string _3g
        {
            get { return _3G; }
            set { _3G = value; }
        }
        public string Wlan
        {
            get { return _Wlan; }
            set { _Wlan = value; }
        }
        public string TinhNang
        {
            get { return _TinhNang; }
            set { _TinhNang = value; }
        }
        public string Camera
        {
            get { return _Camera; }
            set { _Camera = value; }
        }
        public string ManHinh
        {
            get { return _ManHinh; }
            set { _ManHinh = value; }
        }
        public List<SanPham_BIZ> SanPhamsCollection
        {
            get { return _SanPhams; }
            set { _SanPhams = value; }
        }
        private LoaiSanPham_BIZ loaisp;
        public LoaiSanPham_BIZ LoaiSP
        {
            get { return loaisp; }
            set { loaisp = value; }
        }

        private NhaSanXuat_BIZ nsx;
        public NhaSanXuat_BIZ NSX
        {
            get { return nsx; }
            set { nsx = value; }
        }
        private TrangThai_BIZ trangthai;
        public TrangThai_BIZ TT
        {
            get { return trangthai; }
            set { trangthai = value; }
        }
        private string _TenLoaiSP;
        public string TenLoaiSP
        {
            get { return _TenLoaiSP;}
            set{_TenLoaiSP=value;}

        }
        private string _TenNSX;
        public string TenNSX
        {
            get { return _TenNSX; }
            set { _TenNSX = value; }
        }
        private string _TenTrangThai;
        public string TenTrangThai
        {
            get { return _TenTrangThai; }
            set{_TenTrangThai=value;}
        }
        #endregion
        public static SanPham_DAL db = new SanPham_DAL();
        public List<SanPham_BIZ> GetByID(string id)
        {
            return db.GetSPByID(id);
        }
        public void LoadSP()
        {
            SanPham_DAL.GetSanPham(this);
        }
        public void GetAll()
        {
            this._SanPhams = SanPham_DAL.GetAllSanPham();
        }
        public static List<SanPham_BIZ> GetByTop(string Top, string Where, string Order)
        {
            return db.GetByTop(Top, Where, Order);
        }
        public static List<SanPham_BIZ> GetByLoai(string maloai)
        {
            return db.GetByLoai(maloai);
        }
        public static List<SanPham_BIZ> GetByNSX(string mansx)
        {
            return db.GetByNSX(mansx);
        }
        public void Insert()
        {
            SanPham_DAL.InsertSanPham(this);
        }
        public void Update()
        {
            SanPham_DAL.UpdateSanPham(this);
        }
        public void Delete()
        {
            SanPham_DAL.DeleteSanPham(this);
        }
        #region[IDataReader]
        public SanPham_BIZ SanPhamIDataReader(IDataReader dr)
        {
            SanPham_BIZ obj = new SanPham_BIZ();
            obj.MaSanPham = (dr["MaSanPham"] is DBNull) ? string.Empty : dr["MaSanPham"].ToString();
            obj.Gia = (dr["Gia"] is DBNull) ? string.Empty : dr["Gia"].ToString();
            obj.HinhLon = (dr["HinhLon"] is DBNull) ? string.Empty : dr["HinhLon"].ToString();
            obj.HinhNho = (dr["HinhNho"] is DBNull) ? string.Empty : dr["HinhNho"].ToString();
            obj.MaLoai = (dr["MaLoai"] is DBNull) ? string.Empty : dr["MaLoai"].ToString();
            obj.ManHinh = (dr["ManHinh"] is DBNull) ? string.Empty : dr["ManHinh"].ToString();
            obj.MaNSX = (dr["MaNSX"] is DBNull) ? string.Empty : dr["MaNSX"].ToString();
            obj.MoTaSanPham = (dr["MoTaSanPham"] is DBNull) ? string.Empty : dr["MoTaSanPham"].ToString();
            obj.NgayThem = (dr["NgayThem"] is DBNull) ? string.Empty : dr["NgayThem"].ToString();
            obj.TenSanPham = (dr["TenSanPham"] is DBNull) ? string.Empty : dr["TenSanPham"].ToString();
            obj.TinhNang = (dr["TinhNang"] is DBNull) ? string.Empty : dr["TinhNang"].ToString();
            obj.TrangThai = (dr["TrangThai"] is DBNull) ? string.Empty : dr["TrangThai"].ToString();
            obj._3g = (dr["3G"] is DBNull) ? string.Empty : dr["3G"].ToString();
            obj.BoNho = (dr["BoNho"] is DBNull) ? string.Empty : dr["BoNho"].ToString();
            obj.BoXuLy = (dr["BoXuLy"] is DBNull) ? string.Empty : dr["BoXuLy"].ToString();
            obj.Camera = (dr["Camera"] is DBNull) ? string.Empty : dr["Camera"].ToString();
            obj.HDH = (dr["HDH"] is DBNull) ? string.Empty : dr["HDH"].ToString();
            obj.Wlan = (dr["Wlan"] is DBNull) ? string.Empty : dr["Wlan"].ToString();
            return obj;
        }
        #endregion
    }
}