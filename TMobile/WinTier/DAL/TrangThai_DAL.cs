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
    class TrangThai_DAL
    {
        #region GetAllTrangThaiSanPham
        public static List<TrangThai_BIZ> GetAllTrangThai()
        {
            try
            {
                List<TrangThai_BIZ> list = new List<TrangThai_BIZ>();
                using (SqlConnection conn = SQLHelper.ConnectDB())
               {
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_GetAllTrangThai"))
                    {
                        while (dr.Read())
                        {
                            TrangThai_BIZ data = new TrangThai_BIZ();
                            data.MaTT = SQLHelper.CheckStringNull(dr["MaTT"]);
                            data.TenTT = SQLHelper.CheckStringNull(dr["TenTT"]);
                            list.Add(data);
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
        #region GetAllTrangThaiHoaDon
        public static List<TrangThai_BIZ> GetAllTrangThaiHoaDon()
        {
            try
            {
                List<TrangThai_BIZ> list = new List<TrangThai_BIZ>();
                using (SqlConnection conn = SQLHelper.ConnectDB())
               {
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_GetAllTrangThaiHoaDon"))
                    {
                        while (dr.Read())
                        {
                            TrangThai_BIZ data = new TrangThai_BIZ();
                            data.MaTDHD = SQLHelper.CheckStringNull(dr["TrangThai"]);
                            data.TenTTHD = SQLHelper.CheckStringNull(dr["TenTrangThai"]);
                            list.Add(data);
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
    }
}
