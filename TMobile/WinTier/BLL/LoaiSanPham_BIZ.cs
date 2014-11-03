using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinTier.DAL;
namespace WinTier.BLL
{
    public class LoaiSanPham_BIZ
    {
        #region[declare_variables]
        private string _MaLoai;
        private string _TenLoai;
        private string _MoTaLoai;
        #endregion
        #region[declare_public_variables]
        public string MaLoai
        {
            get { return _MaLoai; }
            set { _MaLoai = value; }
        }
        public string TenLoai
        {
            get { return _TenLoai; }
            set { _TenLoai = value; }
        }
        public string MoTaLoai
        {
            get { return _MoTaLoai; }
            set { _MoTaLoai = value; }
        }
        #endregion
        public static LoaiSanPham_DAL db = new LoaiSanPham_DAL();
        public static List<LoaiSanPham_BIZ> GetAll()
        {
            return db.GetAllLoaiSP();
        }
    }
}
