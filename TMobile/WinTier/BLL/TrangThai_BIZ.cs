using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinTier.DAL;
namespace WinTier.BLL
{
    public class TrangThai_BIZ
    {
        private string _MaTT;
        private string _TenTT;
        private string _MaTTHD;
        private string _TenTTHD;
        public string MaTDHD
        {
            get { return _MaTTHD; }
            set { _MaTTHD = value; }
        }
        public string TenTTHD
        {
            get { return _TenTTHD; }
            set { _TenTTHD = value; }
        }
        public string MaTT
        {
            get { return _MaTT; }
            set { _MaTT = value; }
        }
        public string TenTT
        {
            get { return _TenTT; }
            set { _TenTT = value; }
        }
        public void GetAll()
        {
            TrangThai_DAL.GetAllTrangThai();
        }
        public void GetAllTTHD()
        {
            TrangThai_DAL.GetAllTrangThaiHoaDon();
        }
    }
}
