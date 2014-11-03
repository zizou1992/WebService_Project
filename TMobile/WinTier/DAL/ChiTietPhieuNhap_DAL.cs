using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinTier.BLL;
namespace WinTier.DAL
{
    public class ChiTietPhieuNhap_DAL
    {
        #region Insert
        public static void InsertChiTietPhieuNhap(ChiTietPhieuNhap_BIZ ctpn)
        {
            try
            {

                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    SqlParameter[] par = new SqlParameter[5];
                    par[0] = new SqlParameter("@MaPhieuNhap", ctpn.MaPhieuNhap);
                    par[1] = new SqlParameter("@SoLuongNhap", ctpn.SoLuongNhap);
                    par[2] = new SqlParameter("@TongCongNhap", ctpn.TongCongNhap);
                    par[3] = new SqlParameter("@MaSanPham", ctpn.MaSanPham);
                    par[4] = new SqlParameter("@DonGia", ctpn.DonGia);
                    int rowNo = SQLHelper.ExecuteNonQuery(conn, CommandType.StoredProcedure, "sp_ThemChiTietPhieuNhap", par);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
    }
}
