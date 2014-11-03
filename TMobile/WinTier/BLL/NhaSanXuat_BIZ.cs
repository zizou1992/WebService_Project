using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinTier.DAL;
namespace WinTier.BLL
{
    public class NhaSanXuat_BIZ
    {
        #region[declare_variables]
        private string _MaNSX;
        private string _TenNSX;
        private string _MoTaNSX;
        #endregion 
        #region[declare_public_variables]
        public string MaNSX
        {
            get { return _MaNSX; }
            set { _MaNSX = value; }
        }
        public string TenNSX
        {
            get { return _TenNSX; }
            set { _TenNSX = value; }
        }
        public string MoTaNSX
        {
            get { return _MoTaNSX; }
            set { _MoTaNSX = value; }
        }
        #endregion
        public static NhaSanXuat_DAL db = new NhaSanXuat_DAL();
        public static List<NhaSanXuat_BIZ> GetAll()
        {
            return db.GetAllNSX();
        }
        /*
        #region[declare_public_variables]
        public string MaNSX
        {
            get;
            set;
        }
        public string TenNSX
        {
            get;
            set;
        }
        public string MoTaNSX
        {
            get;
            set;
        }
        #endregion */
    }
}
