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
    public class PhieuNhap_DAL
    {
        #region GetAll
        public static List<PhieuNhap_BIZ> GetAllPhieuNhap()
        {
            try
            {
                List<PhieuNhap_BIZ> list = new List<PhieuNhap_BIZ>();
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_GetAllPhieuNhap"))
                    {
                        while (dr.Read())
                        {
                            PhieuNhap_BIZ obj = new PhieuNhap_BIZ();
                            obj.MaNCC = SQLHelper.CheckStringNull(dr["MaNCC"]);
                            obj.MaPhieuNhap = SQLHelper.CheckStringNull(dr["MaPhieuNhap"]);
                            obj.NgayNhap = SQLHelper.CheckStringNull(dr["NgayNhap"]).ToString();
                            obj.TongTienNhap = SQLHelper.CheckStringNull(dr["TongTienNhap"]);
                            obj.TenNCC = SQLHelper.CheckStringNull(dr["ten_ncc"]);
                            list.Add(obj);
                        }
                    }
                }
                return list;
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region Insert
        public static void InsertPhieuNhap(PhieuNhap_BIZ pn)
        {
            try
            {

                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    SqlParameter[] par = new SqlParameter[3];
                    par[0] = new SqlParameter("@MaNCC", pn.MaNCC);
                    par[1] = new SqlParameter("@NgayNhap", pn.NgayNhap);
                    par[2] = new SqlParameter("@TongTienNhap", pn.TongTienNhap);
                    int rowNo = SQLHelper.ExecuteNonQuery(conn, CommandType.StoredProcedure, "sp_ThemPhieuNhap", par);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        public static string MaxId(string Table, string ColId)
        {
            object strReturn="";
            using (SqlConnection conn = SQLHelper.ConnectDB())
            {
                using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_MaxIDPhieuNhap"))
                {
                    while (dr.Read())
                    {
                        strReturn = SQLHelper.CheckStringNull(dr["maxid"]);
                    }
                }
            }
            return strReturn.ToString();
        }
    }
}
