using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using WinTier.BLL;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
namespace WinTier.DAL
{
    public class DonHang_DAL
    {
        #region GetAll
        public static List<DonHang_BIZ> GetAllDonHang()
        {
            try
            {
                List<DonHang_BIZ> list = new List<DonHang_BIZ>();
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_GetAllDonHang"))
                    {
                        while (dr.Read())
                        {
                            DonHang_BIZ obj = new DonHang_BIZ();
                            obj.DiaChiNhan = SQLHelper.CheckStringNull(dr["DiaChiNhan"]);
                            obj.DiaChiTT = SQLHelper.CheckStringNull(dr["DiaChiTT"]);
                            obj.DienThoaiNhan = SQLHelper.CheckStringNull(dr["DienThoaiNhan"]);
                            obj.Email = SQLHelper.CheckStringNull(dr["EmailKhachHang"]);
                            obj.GhiChu = SQLHelper.CheckStringNull(dr["GhiChu"]);
                            obj.MaDonDatHang = SQLHelper.CheckStringNull(dr["MaDonDatHang"]);
                            obj.MaKhachHang = SQLHelper.CheckStringNull(dr["MaKhachHang"]);
                            obj.NgayTao = SQLHelper.CheckStringNull(dr["NgayTao"]);
                            obj.SoDTTT = SQLHelper.CheckStringNull(dr["DienThoaiTT"]);
                            obj.TenKhachHang = SQLHelper.CheckStringNull(dr["TenKhachHang"]);
                            obj.TenNguoiNhan = SQLHelper.CheckStringNull(dr["TenNguoiNhan"]);
                            obj.TenNguoiTT = SQLHelper.CheckStringNull(dr["TenNguoiTT"]);
                            obj.TongTien = SQLHelper.CheckStringNull(dr["TongTien"]);
                            obj.TrangThai = SQLHelper.CheckStringNull(dr["TrangThai"]);
                            obj.NgayGiao = SQLHelper.CheckStringNull(dr["NgayGiao"]);
                            obj.tt_hd = SQLHelper.CheckStringNull(dr["tt_hd"]);
                            obj.ten_xk = SQLHelper.CheckStringNull(dr["ten_xk"]);
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
        #region GetByID
        public List<DonHang_BIZ> GetDonHangByID(string id)
        {

            try
            {
                using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    List<DonHang_BIZ> list = new List<DonHang_BIZ>();
                    DonHang_BIZ obj = new DonHang_BIZ();
                    SqlParameter[] par = new SqlParameter[1];
                    par[0] = new SqlParameter("@MaDonHang", id);
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(con, CommandType.StoredProcedure, "sp_GetDonHangByID", par))
                    {
                        while (dr.Read())
                        {
                            obj.DiaChiNhan = SQLHelper.CheckStringNull(dr["DiaChiNhan"]);
                            obj.DiaChiTT = SQLHelper.CheckStringNull(dr["DiaChiTT"]);
                            obj.DienThoaiNhan = SQLHelper.CheckStringNull(dr["DienThoaiNhan"]);
                            obj.Email = SQLHelper.CheckStringNull(dr["EmailKhachHang"]);
                            obj.GhiChu = SQLHelper.CheckStringNull(dr["GhiChu"]);
                            obj.MaDonDatHang = SQLHelper.CheckStringNull(dr["MaDonDatHang"]);
                            obj.MaKhachHang = SQLHelper.CheckStringNull(dr["MaKhachHang"]);
                            obj.NgayTao = SQLHelper.CheckStringNull(dr["NgayTao"]);
                            obj.SoDTTT = SQLHelper.CheckStringNull(dr["DienThoaiTT"]);
                            obj.TenKhachHang = SQLHelper.CheckStringNull(dr["TenKhachHang"]);
                            obj.TenNguoiNhan = SQLHelper.CheckStringNull(dr["TenNguoiNhan"]);
                            obj.TenNguoiTT = SQLHelper.CheckStringNull(dr["TenNguoiTT"]);
                            obj.TongTien = SQLHelper.CheckStringNull(dr["TongTien"]);
                            obj.TrangThai = SQLHelper.CheckStringNull(dr["TrangThai"]);
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
        #region GetByTOP
        public List<DonHang_BIZ> GetByTop(string Top, string Where, string Order)
        {
            try
            {
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    List<DonHang_BIZ> list = new List<DonHang_BIZ>();
                    DonHang_BIZ obj = new DonHang_BIZ();
                    SqlParameter[] par = new SqlParameter[3];
                    par[0] = new SqlParameter("@Top", Top);
                    par[1] = new SqlParameter("@Where", Where);
                    par[2] = new SqlParameter("@Order", Order);
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_GetDonHangByTop", par))
                    {
                        while (dr.Read())
                        {
                            obj.DiaChiNhan = SQLHelper.CheckStringNull(dr["DiaChiNhan"]);
                            obj.DiaChiTT = SQLHelper.CheckStringNull(dr["DiaChiTT"]);
                            obj.DienThoaiNhan = SQLHelper.CheckStringNull(dr["DienThoaiNhan"]);
                            obj.Email = SQLHelper.CheckStringNull(dr["EmailKhachHang"]);
                            obj.GhiChu = SQLHelper.CheckStringNull(dr["GhiChu"]);
                            obj.MaDonDatHang = SQLHelper.CheckStringNull(dr["MaDonDatHang"]);
                            obj.MaKhachHang = SQLHelper.CheckStringNull(dr["MaKhachHang"]);
                            obj.NgayTao = SQLHelper.CheckStringNull(dr["NgayTao"]);
                            obj.SoDTTT = SQLHelper.CheckStringNull(dr["DienThoaiTT"]);
                            obj.TenKhachHang = SQLHelper.CheckStringNull(dr["TenKhachHang"]);
                            obj.TenNguoiNhan = SQLHelper.CheckStringNull(dr["TenNguoiNhan"]);
                            obj.TenNguoiTT = SQLHelper.CheckStringNull(dr["TenNguoiTT"]);
                            obj.TongTien = SQLHelper.CheckStringNull(dr["TongTien"]);
                            obj.TrangThai = SQLHelper.CheckStringNull(dr["TrangThai"]);
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
        #region MaxID
        public static string MaxId(string Table, string ColId)
        {
            object strReturn = "";
            using (SqlConnection conn = SQLHelper.ConnectDB())
            {
                using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_MaxIdDonHang"))
                {
                    while (dr.Read())
                    {
                        strReturn = SQLHelper.CheckStringNull(dr["maxid"]);
                    }
                }
            }
            return strReturn.ToString();
        }
        #endregion
        #region Insert
        public static void InsertDonHang(DonHang_BIZ obj)
        {

            try
            {

                using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    //conn.Open();
                    SqlParameter[] par = new SqlParameter[14];
                    par[0] = new SqlParameter("@DiaChiNhan", obj.DiaChiNhan);
                    par[1] = new SqlParameter("@DiaChiTT", obj.DiaChiTT);
                    par[2] = new SqlParameter("@DienThoaiNhan", obj.DienThoaiNhan);
                    par[3] = new SqlParameter("@EmailKhachHang", obj.Email);
                    par[4] = new SqlParameter("@GhiChu", obj.GhiChu);
                    par[5] = new SqlParameter("@MaKhachHang", obj.MaKhachHang == "" || obj.MaKhachHang == "0" ? DBNull.Value : (object)obj.MaKhachHang);
                    par[6] = new SqlParameter("@NgayTao", obj.NgayTao);
                    par[7] = new SqlParameter("@DienThoaiTT", obj.SoDTTT);
                    par[8] = new SqlParameter("@TenKhachHang", obj.TenKhachHang);
                    par[9] = new SqlParameter("@TenNguoiNhan", obj.TenNguoiNhan);
                    par[10] = new SqlParameter("@TenNguoiTT", obj.TenNguoiTT);
                    par[11] = new SqlParameter("@TongTien", obj.TongTien);
                    par[12] = new SqlParameter("@TrangThai", obj.TrangThai);
                    par[13] = new SqlParameter("@XuatKho", obj.XuatKho);
                    int rowNo = SQLHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "sp_ThemDonHang", par);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region Update
        public static void UpdateDonHang(DonHang_BIZ obj)
        {
            try
            {
                using (SqlConnection con = SQLHelper.ConnectDB())//using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    SqlParameter[] par = new SqlParameter[10];
                    par[0] = new SqlParameter("@DiaChiNhan", obj.DiaChiNhan);
                    par[1] = new SqlParameter("@DiaChiTT", obj.DiaChiTT);
                    par[2] = new SqlParameter("@DienThoaiNhan", obj.DienThoaiNhan);
                    par[3] = new SqlParameter("@NgayGiao", obj.NgayGiao);
                    par[4] = new SqlParameter("@GhiChu", obj.GhiChu);
                    par[5] = new SqlParameter("@TrangThai", obj.TrangThai);
                    par[6] = new SqlParameter("@MaDonDatHang", obj.MaDonDatHang);
                    par[7] = new SqlParameter("@DienThoaiTT", obj.SoDTTT);
                    par[8] = new SqlParameter("@TenNguoiNhan", obj.TenNguoiNhan);
                    par[9] = new SqlParameter("@TenNguoiTT", obj.TenNguoiTT);
                    int rowNo = SQLHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "sp_CapNhatDonHang", par);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region CapNhatXuatKho
        public static void CapNhatXuatKho(DonHang_BIZ obj)
        {
            try
            {
                using (SqlConnection con = SQLHelper.ConnectDB())
                {
                    SqlParameter[] par = new SqlParameter[2];
                    par[0] = new SqlParameter("@XuatKho", obj.XuatKho);
                    par[1] = new SqlParameter("@MaDonDatHang", obj.MaDonDatHang);
                    int rowNo = SQLHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "sp_CapNhatTTXuatKho", par);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region ThongKe
        public static List<DonHang_BIZ> ThongKe(string Where)
        {
            try
            {
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    List<DonHang_BIZ> list = new List<DonHang_BIZ>();
                    SqlParameter[] par = new SqlParameter[1];
                    par[0] = new SqlParameter("@Where", Where);
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_ThongKeDoanhThu", par))
                    {
                        while (dr.Read())
                        {
                            DonHang_BIZ obj = new DonHang_BIZ();;
                            obj.MaDonDatHang = SQLHelper.CheckStringNull(dr["MaDonDatHang"]);
                            obj.MaKhachHang = SQLHelper.CheckStringNull(dr["MaKhachHang"]);
                            obj.NgayTao = SQLHelper.CheckStringNull(dr["NgayTao"]);
                            obj.TongTien = SQLHelper.CheckStringNull(dr["TongTien"]);
                            obj.NgayGiao = SQLHelper.CheckStringNull(dr["NgayGiao"]);
                            list.Add(obj);
                        }

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
      /*  Database db = DatabaseFactory.CreateDatabase();
        #region[GetByid]
        public System.Data.DataTable GetByid(string id)
        {
            using (SqlCommand cmd = new SqlCommand("sp_GetDonHangByID", GetConnection()))
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
        #region[GetByID]
        public List<DonHang_BIZ> GetById(string Id)
        {
            List<DonHang_BIZ> list = new List<DonHang_BIZ>();
            DonHang_BIZ obj = new DonHang_BIZ();
            DbCommand cmd = db.GetStoredProcCommand("sp_GetDonHangByID", Id);
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    list.Add(obj.DonHangIDataReader(dr));
                }
                dr.Close();
                dr.Dispose();
            }
            return list;
        }
        #endregion
        #region[GetByAll]
        public List<DonHang_BIZ> GetByAll()
        {
            List<DonHang_BIZ> list = new List<DonHang_BIZ>();
            DonHang_BIZ obj = new DonHang_BIZ();
            DbCommand cmd = db.GetStoredProcCommand("sp_GetAllDonHang");
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    list.Add(obj.DonHangIDataReader(dr));
                }
                dr.Close();
                dr.Dispose();
            }
            return list;
        }
        public System.Data.DataTable GetAllDonHang()
        {
            using (SqlCommand cmd = new SqlCommand("sp_GetAllDonHang", GetConnection()))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;

            }
        }
        #endregion
        #region[GetByTop]
        public List<DonHang_BIZ> GetByTOP(string TOP,string where,string Order)
        {
            List<DonHang_BIZ> list = new List<DonHang_BIZ>();
            DonHang_BIZ obj = new DonHang_BIZ();
            DbCommand cmd = db.GetStoredProcCommand("sp_GetDonHangByTOP",TOP,where,Order);
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    list.Add(obj.DonHangIDataReader(dr));
                }
                dr.Close();
                dr.Dispose();
            }
            return list;
        }
        public System.Data.DataTable GetDonHangByTOP(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_GetDonHangByTOP", GetConnection()))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Top", Top));
                cmd.Parameters.Add(new SqlParameter("@Where", Where));
                cmd.Parameters.Add(new SqlParameter("@Order", Order));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;

            }
        }
        #endregion
        #region[LocTheoNgayDat]
        public System.Data.DataTable LocTheoNgay(string ngay)
        {
            using (SqlCommand cmd = new SqlCommand("sp_LocHoaDonTheoNgayTao", GetConnection()))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@NgayTao", ngay));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;

            }
        }
        #endregion
        #region[LocTheoTrangThai]
        public System.Data.DataTable LocTheoTrangThai(string tt)
        {
            using (SqlCommand cmd = new SqlCommand("sp_LocHoaDonTheoTrangThai", GetConnection()))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@TrangThai", tt));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;

            }
        }
        #endregion
        #region[Them]
        public bool Them(DonHang_BIZ data)
        {
            using (DbCommand cmd = db.GetStoredProcCommand("sp_ThemDonHang"))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@MaKhachHang", data.MaKhachHang == "" || data.MaKhachHang == "0" ? DBNull.Value : (object)data.MaKhachHang));
                cmd.Parameters.Add(new SqlParameter("@NgayTao", data.NgayTao));
                cmd.Parameters.Add(new SqlParameter("@GhiChu", data.GhiChu));
                cmd.Parameters.Add(new SqlParameter("@TenKhachHang", data.TenKhachHang));
                cmd.Parameters.Add(new SqlParameter("@TenNguoiTT", data.TenNguoiTT));
                cmd.Parameters.Add(new SqlParameter("@DiaChiTT", data.DiaChiTT));
                cmd.Parameters.Add(new SqlParameter("@DienThoaiTT", data.SoDTTT));
                cmd.Parameters.Add(new SqlParameter("@TenNguoiNhan", data.TenNguoiNhan));
                cmd.Parameters.Add(new SqlParameter("@DiaChiNhan", data.DiaChiNhan));
                cmd.Parameters.Add(new SqlParameter("@DienThoaiNhan", data.DienThoaiNhan));
                cmd.Parameters.Add(new SqlParameter("@TrangThai", data.TrangThai));
                cmd.Parameters.Add(new SqlParameter("@TongTien", data.TongTien));
                cmd.Parameters.Add(new SqlParameter("@EmailKhachHang", data.Email));
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
            DbCommand cmd = db.GetStoredProcCommand("sp_XoaDonHang", Id);
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
        public bool Sua(DonHang_BIZ data)
        {
            using (DbCommand cmd = db.GetStoredProcCommand("sp_CapNhatDonHang"))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@MaDonDatHang", data.MaDonDatHang));
                cmd.Parameters.Add(new SqlParameter("@NgayGiao", data.NgayGiao));
                cmd.Parameters.Add(new SqlParameter("@GhiChu", data.GhiChu));
                cmd.Parameters.Add(new SqlParameter("@TenNguoiTT", data.TenNguoiTT));
                cmd.Parameters.Add(new SqlParameter("@DiaChiTT", data.DiaChiTT));
                cmd.Parameters.Add(new SqlParameter("@DienThoaiTT", data.SoDTTT));
                cmd.Parameters.Add(new SqlParameter("@TenNguoiNhan", data.TenNguoiNhan));
                cmd.Parameters.Add(new SqlParameter("@DiaChiNhan", data.DiaChiNhan));
                cmd.Parameters.Add(new SqlParameter("@DienThoaiNhan", data.DienThoaiNhan));
                cmd.Parameters.Add(new SqlParameter("@TrangThai", data.TrangThai));
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