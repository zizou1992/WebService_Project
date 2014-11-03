using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Practices.EnterpriseLibrary.Data;
using WinTier.BLL;
using System.Data.Common;
using System.Data;
using System.Data.SqlClient;
namespace WinTier.DAL
{
    public class ChiTietDonHang_DAL
    {
        #region GetAll
        public static List<ChiTietDonHang_BIZ> GetAllCTDonHang()
        {
            try
            {
                List<ChiTietDonHang_BIZ> list = new List<ChiTietDonHang_BIZ>();
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_GetAllChiTietDonHang"))
                    {
                        while (dr.Read())
                        {
                            ChiTietDonHang_BIZ obj = new ChiTietDonHang_BIZ();
                            obj.Gia = SQLHelper.CheckStringNull(dr["Gia"]);
                            obj.ID = SQLHelper.CheckStringNull(dr["ID"]);
                            obj.MaDonDatHang = SQLHelper.CheckStringNull(dr["MaDonDatHang"]);
                            obj.MaSanPham = SQLHelper.CheckStringNull(dr["MaSanPham"]);
                            obj.SoLuong = SQLHelper.CheckStringNull(dr["SoLuong"]);
                            obj.TongCong = SQLHelper.CheckStringNull(dr["TongCong"]);
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
        public static void InsertCTDonHang(ChiTietDonHang_BIZ obj)
        {

            try
            {

                using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    //conn.Open();
                    SqlParameter[] par = new SqlParameter[5];
                    par[0] = new SqlParameter("@MaDonDatHang", obj.MaDonDatHang);
                    par[1] = new SqlParameter("@MaSanPham", obj.MaSanPham);
                    par[2] = new SqlParameter("@Gia", obj.Gia);
                    par[3] = new SqlParameter("@SoLuong", obj.SoLuong);
                    par[4] = new SqlParameter("@TongCong", obj.TongCong);
                    int rowNo = SQLHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "sp_ThemChiTietDonHang", par);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region GetCTDHbyID
        public static List<ChiTietDonHang_BIZ> GetByID(string madonhang)
        {
            try
            {
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    List<ChiTietDonHang_BIZ> list = new List<ChiTietDonHang_BIZ>();
                    SqlParameter[] par = new SqlParameter[1];
                    par[0] = new SqlParameter("@MaDonDatHang", madonhang);
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_ChiTietDonHangID", par))
                    {
                        while (dr.Read())
                        {
                            ChiTietDonHang_BIZ obj = new ChiTietDonHang_BIZ();
                            obj.Gia = SQLHelper.CheckStringNull(dr["Gia"]);
                            obj.ID = SQLHelper.CheckStringNull(dr["ID"]);
                            obj.MaDonDatHang = SQLHelper.CheckStringNull(dr["MaDonDatHang"]);
                            obj.MaSanPham = SQLHelper.CheckStringNull(dr["MaSanPham"]);
                            obj.SoLuong = SQLHelper.CheckStringNull(dr["SoLuong"]);
                            obj.TongCong = SQLHelper.CheckStringNull(dr["TongCong"]);
                            obj.TenSP = SQLHelper.CheckStringNull(dr["ten_sp"]);
                            list.Add(obj);
                        }
                        dr.Close();
                        dr.Dispose();
                    }
                    return list;
                }

            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        /* Database db = DatabaseFactory.CreateDatabase();
        #region[XemChiTiet]
        public System.Data.DataTable XemChiTietID(string id)
        {
            using (SqlCommand cmd = new SqlCommand("sp_ChiTietDonHangID", GetConnection()))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@MaDonDatHang", id));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion
        #region[GetAll]
        public List<ChiTietDonHang_BIZ> GetByAll()
        {
            List<ChiTietDonHang_BIZ> list = new List<ChiTietDonHang_BIZ>();
            ChiTietDonHang_BIZ obj = new ChiTietDonHang_BIZ();
            DbCommand cmd = db.GetStoredProcCommand("sp_GetAllChiTietDonHang");
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    list.Add(obj.CTDHIDataReader(dr));
                }
                dr.Close();
                dr.Dispose();
            }
            return list;
        }
        #endregion
        #region[getByID]
        public List<ChiTietDonHang_BIZ> GetByID(string ID)
        {
            List<ChiTietDonHang_BIZ> list = new List<ChiTietDonHang_BIZ>();
            ChiTietDonHang_BIZ obj = new ChiTietDonHang_BIZ();
            DbCommand cmd = db.GetStoredProcCommand("sp_GetChiTietDonHangByID", ID);
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    list.Add(obj.CTDHIDataReader(dr));
                }
                dr.Close();
                dr.Dispose();
            }
            return list;
        }
        #endregion
        #region[GetByTOP]
        public List<ChiTietDonHang_BIZ> GetByTop(string Top, string Where, string Order)
        {
            List<ChiTietDonHang_BIZ> list = new List<ChiTietDonHang_BIZ>();
            ChiTietDonHang_BIZ obj = new ChiTietDonHang_BIZ();
            DbCommand cmd = db.GetStoredProcCommand("sp_GetChiTietDonHangByTOP", Top, Where, Order);
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    list.Add(obj.CTDHIDataReader(dr));
                }
                dr.Close();
                dr.Dispose();
            }
            return list;
        }
        #endregion
        #region[Them]
        public bool Them(ChiTietDonHang_BIZ data)
        {
            using (DbCommand cmd = db.GetStoredProcCommand("sp_ThemChiTietDonHang"))
            {
                cmd.Parameters.Add(new SqlParameter("@MaDonDatHang", data.MaDonDatHang == "" || data.MaDonDatHang == "0" ? DBNull.Value : (object)data.MaDonDatHang));
                cmd.Parameters.Add(new SqlParameter("@MaSanPham", data.MaSanPham == "" || data.MaSanPham == "0" ? DBNull.Value : (object)data.MaSanPham));
                cmd.Parameters.Add(new SqlParameter("@SoLuong", data.SoLuong));
                cmd.Parameters.Add(new SqlParameter("@Gia", data.Gia));
                cmd.Parameters.Add(new SqlParameter("@TongCong", data.TongCong));               
                try
                {
                    db.ExecuteNonQuery(cmd);
                    return true;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    if (cmd != null) cmd.Dispose();
                }
            }
        }
        #endregion
        #region[Xoa]
        public bool Xoa(string Id)
        {
            DbCommand cmd = db.GetStoredProcCommand("sp_XoaChiTietDonHang", Id);
            try
            {
                db.ExecuteNonQuery(cmd);
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (cmd != null) cmd.Dispose();
            }
        }
        #endregion
        #region[Sua]
        public bool Sua(ChiTietDonHang_BIZ data)
        {
            using (DbCommand cmd = db.GetStoredProcCommand("sp_CapNhatChiTietDonHang"))
            {
                cmd.Parameters.Add(new SqlParameter("@ID", data.ID));
                cmd.Parameters.Add(new SqlParameter("@MaDonDatHang", data.MaDonDatHang == "" || data.MaDonDatHang == "0" ? DBNull.Value : (object)data.MaDonDatHang));
                cmd.Parameters.Add(new SqlParameter("@MaSanPham", data.MaSanPham == "" || data.MaSanPham == "0" ? DBNull.Value : (object)data.MaSanPham));
                cmd.Parameters.Add(new SqlParameter("@Gia", data.Gia));
                cmd.Parameters.Add(new SqlParameter("@SoLuong", data.SoLuong));
                cmd.Parameters.Add(new SqlParameter("@TongCong", data.TongCong));
               
                try
                {
                    db.ExecuteNonQuery(cmd);
                    return true;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    if (cmd != null) cmd.Dispose();
                }
            }
        }
        #endregion */
    }
}