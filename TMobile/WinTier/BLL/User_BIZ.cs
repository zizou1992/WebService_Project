using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WinTier.DAL;

namespace WinTier.BLL
{
    public class User_BIZ
    {
        #region[Declare variables]
        private string _UserID;
        private string _TenDangNhap;
        private string _QuyenTaiKhoan;
        private String _MatKhau;
        private string _CMND;
        private string _HoTen;
        private string _DiaChi;
        private string _SoDT;
        private string _NgaySinh;
        private string _CreditCard;
        private string _CauHoiBaoMat;
        private string _CauTraLoi;
        private string _Email;
        private string _DaKichHoat;
        private string _DaDangXuat;
        private string _NgayTao;
        private string _NgayDangNhapCuoi;
        private string _NgayDoiMatKhauCuoi;
        private string _SoLanSaiMatKhau;
        private string _NgayKhoaTaiKhoanDoSaiMatKhau;
        #endregion
        #region[Public Properties]
        public string UserID
        {
            get { return _UserID; }
            set { _UserID = value; }
        }
        public string TenDangNhap
        {
            get { return _TenDangNhap; }
            set { _TenDangNhap = value; }
        }
        public string CMND
        {
            get { return _CMND; }
            set { _CMND = value; }
        }
        public string QuyenTaiKhoan
        {
            get { return _QuyenTaiKhoan; }
            set { _QuyenTaiKhoan = value; }
        }
        public String MatKhau
        {
            get { return _MatKhau; }
            set { _MatKhau = value; }
        }
        public string HoTen
        {
            get { return _HoTen; }
            set { _HoTen = value; }
        }
        public string DiaChi
        {
            get { return _DiaChi; }
            set { _DiaChi = value; }
        }
        public string SoDT
        {
            get { return _SoDT; }
            set { _SoDT = value; }
        }
        public string NgaySinh
        {
            get { return _NgaySinh; }
            set { _NgaySinh = value; }
        }
        public string CreditCard
        {
            get { return _CreditCard; }
            set { _CreditCard = value; }
        }
        public string CauHoiBaoMat
        {
            get { return _CauHoiBaoMat; }
            set { _CauHoiBaoMat = value; }
        }
        public string CauTraLoi
        {
            get { return _CauTraLoi; }
            set { _CauTraLoi = value; }
        }
        public string Email
        {
            get { return _Email; }
            set { _Email = value; }
        }
        public string DaKichHoat
        {
            get { return _DaKichHoat; }
            set { _DaKichHoat = value; }
        }
        public string DaDangXuat
        {
            get { return _DaDangXuat; }
            set { _DaDangXuat = value; }
        }
        public string NgayTao
        {
            get { return _NgayTao; }
            set { _NgayTao = value; }
        }
        public string NgayDangNhapCuoi
        {
            get { return _NgayDangNhapCuoi; }
            set { _NgayDangNhapCuoi = value; }
        }
        public string NgayDoiMatKhauCuoi
        {
            get { return _NgayDoiMatKhauCuoi; }
            set { _NgayDoiMatKhauCuoi = value; }
        }
        public string SoLanSaiMatKhau
        {
            get { return _SoLanSaiMatKhau; }
            set { _SoLanSaiMatKhau = value; }
        }
        public string NgayKhoaTaiKhoanDoSaiMatKhau
        {
            get { return _NgayKhoaTaiKhoanDoSaiMatKhau; }
            set { _NgayKhoaTaiKhoanDoSaiMatKhau = value; }
        }
        #endregion
        public static User_DAL db = new User_DAL();
        #region[KiemTraDangNhap]
        public int KiemTraDangNhap(string un, string pw)
        {
            return db.KiemTraDangNhap(un, pw);
        }
        #endregion
        #region[GetByID]
        public DataTable GetByID(string id)
        {
            return db.GetUserByID(id);
        }
        #endregion
        #region GetUser
        public void LoadUser()
        {
            User_DAL.GetUser(this);
        }
        #endregion
        #region ThemUser
        public void Insert()
        {
            User_DAL.InsertUser(this);
        }
        #endregion
        /* public static User_DAL db = new User_DAL();
        #region[getall]
        public DataTable GetAll()
        {
            return db.GetAllUser();
        }
        #endregion
        #region[GetByID]
        public DataTable GetByID(string id)
        {
            return db.GetUserByID(id);
        }
        #endregion
        #region[Them]
        public void ThemUser(User_BIZ data)
        {
            db.ThemUser(data);

        }
        #endregion
        #region[CapNhat]
        public void CapNhatUser(User_BIZ data)
        {
            db.CapNhatUser(data);
        }
        public void CapNhatTaiKhoan(User_BIZ data)
        {
            db.CapNhatTaiKhoan(data);
        }
        #endregion
        #region[Xoa]
        public void XoaUser(string id)
        {
            db.XoaUser(id);
        }
        #endregion
        #region[KiemTraDangNhap]
        public int KiemTraDangNhap(string un, string pw)
        {
            return db.KiemTraDangNhap(un, pw);
        }
        #endregion
        #region[LayThongTinUser]
        public DataTable GetByID(string un, string pw)
        {
            return db.LayThongTinUser(un,pw);
        }
        #endregion */
    }
}