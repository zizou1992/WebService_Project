using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinTier.DAL;
namespace WinTier.BLL
{
    public class NhaCungCap_BIZ
    {
        #region[declare_variables]
        private string _MaNCC;
        private string _TenNCC;
        private string _DiaChiNCC;
        private string _SoDTNCC;
        private string _EmailNCC;
        #endregion
        #region[declare_public_variables]
        public string MaNCC
        {
            get { return _MaNCC; }
            set { _MaNCC = value; }
        }
        public string TenNCC
        {
            get { return _TenNCC; }
            set { _TenNCC = value; }
        }
        public string DiaChiNCC
        {
            get { return _DiaChiNCC; }
            set { _DiaChiNCC = value; }
        }
        public string SoDTNCC
        {
            get { return _SoDTNCC; }
            set { _SoDTNCC = value; }
        }
        public string EmailNCC
        {
            get { return _EmailNCC; }
            set { _EmailNCC = value; }
        }
        #endregion
        public static NhaCungCap_DAL db = new NhaCungCap_DAL();
        public static List<NhaCungCap_BIZ> GetAll()
        {
            return db.GetAllNCC();
        }
    }
}
