using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinTier.DAL;
namespace WinTier.BLL
{
    public class PhieuNhap_BIZ
    {
        private string _MaNCC;       
        private string _MaPhieuNhap;
        private string _NgayNhap;
        private string _TongTienNhap;
        private string _TenNCC;
        public string MaPhieuNhap
        {
            get { return _MaPhieuNhap; }
            set { _MaPhieuNhap = value; }
        }
        public string MaNCC
        {
            get { return _MaNCC; }
            set { _MaNCC = value; }
        }
        public string NgayNhap
        {
            get { return _NgayNhap; }
            set { _NgayNhap = value; }
        }
        public string TongTienNhap
        {
            get { return _TongTienNhap; }
            set { _TongTienNhap = value; }
        }
        public string TenNCC
        {
            get { return _TenNCC; }
            set { _TenNCC = value; }
        }
        public void Insert()
        {
            PhieuNhap_DAL.InsertPhieuNhap(this);
        }
        public void GetAll()
        {
            PhieuNhap_DAL.GetAllPhieuNhap();
        }
    }
}
