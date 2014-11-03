using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinTier.BLL;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;

namespace WinTier.DAL
{
    public class SanPham_DAL
    {
        #region GetAll
        public static List<SanPham_BIZ> GetAllSanPham()
        {
            try
           {
                List<SanPham_BIZ> splist = new List<SanPham_BIZ>();
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_GetAllSanPham"))
                    {
                        while (dr.Read())
                        {
                            SanPham_BIZ sp = new SanPham_BIZ();
                            sp._3g = SQLHelper.CheckStringNull(dr["3G"]);
                            sp.BoNho = SQLHelper.CheckStringNull(dr["BoNho"]);
                            sp.BoXuLy = SQLHelper.CheckStringNull(dr["BoXuLy"]);
                            sp.Camera = SQLHelper.CheckStringNull(dr["Camera"]);
                            sp.Gia = SQLHelper.CheckStringNull(dr["Gia"]);
                            sp.HDH = SQLHelper.CheckStringNull(dr["HDH"]);
                            sp.HinhLon = SQLHelper.CheckStringNull(dr["HinhLon"]);
                            sp.HinhNho = SQLHelper.CheckStringNull(dr["HinhNho"]);
                            sp.MaLoai = SQLHelper.CheckStringNull(dr["MaLoai"]);
                            sp.MaNSX = SQLHelper.CheckStringNull(dr["MaNSX"]);
                            sp.MaSanPham = SQLHelper.CheckStringNull(dr["MaSanPham"]);
                            sp.MoTaSanPham = SQLHelper.CheckStringNull(dr["MoTaSanPham"]);
                            sp.NgayThem = SQLHelper.CheckStringNull(dr["NgayThem"]);
                            sp.TenSanPham = SQLHelper.CheckStringNull(dr["TenSanPham"]);
                            sp.TinhNang = SQLHelper.CheckStringNull(dr["TinhNang"]);
                            sp.TrangThai = SQLHelper.CheckStringNull(dr["TrangThai"]);
                            sp.Wlan = SQLHelper.CheckStringNull(dr["Wlan"]);
                            sp.TenLoaiSP = SQLHelper.CheckStringNull(dr["ten_loai"]);
                            sp.TenNSX = SQLHelper.CheckStringNull(dr["ten_nsx"]);
                            sp.TenTrangThai = SQLHelper.CheckStringNull(dr["ten_tt"]);
                            sp.ManHinh = SQLHelper.CheckStringNull(dr["ManHinh"]);
                            splist.Add(sp);
                        }
                    }
                }
                return splist;
           }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region GetByID
        public List<SanPham_BIZ> GetSPByID(string id)
        {

            try
            {
                using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    List<SanPham_BIZ> list = new List<SanPham_BIZ>();
                    SanPham_BIZ obj = new SanPham_BIZ();
                    SqlParameter[] par = new SqlParameter[1];
                    par[0] = new SqlParameter("@MaSanPham", id);
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(con, CommandType.StoredProcedure, "sp_GetSanPhamByID", par))
                    {
                        while (dr.Read())
                        {
                            list.Add(obj.SanPhamIDataReader(dr));
                        }
                        dr.Close();
                        dr.Dispose();
                    }
                    return list;
                }
            }
            catch(Exception ex)
            {
                throw;
            }
        }
        public static void GetSanPham(SanPham_BIZ sp)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    SqlParameter[] par = new SqlParameter[1];
                    par[0] = new SqlParameter("@MaSanPham", sp.MaSanPham);
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(con, CommandType.StoredProcedure, "sp_GetSanPhamByID", par))
                    {
                        while (dr.Read())
                        {
                            sp._3g = SQLHelper.CheckStringNull(dr["3G"]);
                            sp.BoNho = SQLHelper.CheckStringNull(dr["BoNho"]);
                            sp.BoXuLy = SQLHelper.CheckStringNull(dr["BoXuLy"]);
                            sp.Camera = SQLHelper.CheckStringNull(dr["Camera"]);
                            sp.Gia = SQLHelper.CheckStringNull(dr["Gia"]);
                            sp.HDH = SQLHelper.CheckStringNull(dr["HDH"]);
                            sp.HinhLon = SQLHelper.CheckStringNull(dr["HinhLon"]);
                            sp.HinhNho = SQLHelper.CheckStringNull(dr["HinhNho"]);
                            //sp.MaLoai = SQLHelper.CheckStringNull(dr["MaLoai"]);
                            //sp.MaNSX = SQLHelper.CheckStringNull(dr["MaNSX"]);
                            sp.MaSanPham = SQLHelper.CheckStringNull(dr["MaSanPham"]);
                            sp.MoTaSanPham = SQLHelper.CheckStringNull(dr["MoTaSanPham"]);
                            //sp.NgayThem = SQLHelper.CheckStringNull(dr["NgayThem"]);
                            sp.TenSanPham = SQLHelper.CheckStringNull(dr["TenSanPham"]);
                            sp.TinhNang = SQLHelper.CheckStringNull(dr["TinhNang"]);
                            //sp.TrangThai = SQLHelper.CheckStringNull(dr["TrangThai"]);
                            sp.Wlan = SQLHelper.CheckStringNull(dr["Wlan"]);
                            //sp.TenLoaiSP = SQLHelper.CheckStringNull(dr["ten_loai"]);
                            //sp.TenNSX = SQLHelper.CheckStringNull(dr["ten_nsx"]);
                            //sp.TenTrangThai = SQLHelper.CheckStringNull(dr["ten_tt"]);
                            sp.ManHinh = SQLHelper.CheckStringNull(dr["ManHinh"]);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region GetByTOP
        public List<SanPham_BIZ> GetByTop(string Top, string Where, string Order)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    List<SanPham_BIZ> list = new List<SanPham_BIZ>();
                    SanPham_BIZ obj = new SanPham_BIZ();
                    SqlParameter[] par = new SqlParameter[3];
                    par[0] = new SqlParameter("@Top", Top);
                    par[1] = new SqlParameter("@Where", Where);
                    par[2] = new SqlParameter("@Order", Order);
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(con, CommandType.StoredProcedure, "sp_GetSanPhamByTop", par))
                    {
                        while (dr.Read())
                        {
                            list.Add(obj.SanPhamIDataReader(dr));
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
        #region GetByLoai
        public List<SanPham_BIZ> GetByLoai(string maloai)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    List<SanPham_BIZ> list = new List<SanPham_BIZ>();
                    SanPham_BIZ obj = new SanPham_BIZ();
                    SqlParameter[] par = new SqlParameter[1];
                    par[0] = new SqlParameter("@MaLoai", maloai);
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(con, CommandType.StoredProcedure, "sp_GetSanPhamByLoaiSP", par))
                    {
                        while (dr.Read())
                        {
                            list.Add(obj.SanPhamIDataReader(dr));
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
        #region GetByNSX
        public List<SanPham_BIZ> GetByNSX(string mansx)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    List<SanPham_BIZ> list = new List<SanPham_BIZ>();
                    SanPham_BIZ obj = new SanPham_BIZ();
                    SqlParameter[] par = new SqlParameter[1];
                    par[0] = new SqlParameter("@NSX", mansx);
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(con, CommandType.StoredProcedure, "sp_GetSanPhamByNSX", par))
                    {
                        while (dr.Read())
                        {
                            list.Add(obj.SanPhamIDataReader(dr));
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
        #region Insert
        public static void InsertSanPham(SanPham_BIZ sp)
        {
            
            try
            {
                
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    //conn.Open();
                    SqlParameter[] par = new SqlParameter[17];
                    par[0] = new SqlParameter("@TenSanPham", sp.TenSanPham);
                    par[1] = new SqlParameter("@MoTaSanPham", sp.MoTaSanPham);
                    par[2] = new SqlParameter("@MaLoai", sp.MaLoai);
                    par[3] = new SqlParameter("@MaNSX", sp.MaNSX);
                    par[4] = new SqlParameter("@3G", sp._3g);
                    par[5] = new SqlParameter("@BoNho", sp.BoNho);
                    par[6] = new SqlParameter("@BoXuLy", sp.BoXuLy);
                    par[7] = new SqlParameter("@Camera", sp.Camera);
                    par[8] = new SqlParameter("@Gia", sp.Gia);
                    par[9] = new SqlParameter("@HDH", sp.HDH);
                    par[10] = new SqlParameter("@HinhLon", sp.HinhLon);
                    par[11] = new SqlParameter("@HinhNho", sp.HinhNho);
                    par[12] = new SqlParameter("@ManHinh", sp.ManHinh);
                    par[13] = new SqlParameter("@NgayThem", sp.NgayThem);
                    par[14] = new SqlParameter("@TinhNang", sp.TinhNang);
                    par[15] = new SqlParameter("@TrangThai", sp.TrangThai);
                    par[16] = new SqlParameter("@Wlan", sp.Wlan);
                    int rowNo = SQLHelper.ExecuteNonQuery(conn, CommandType.StoredProcedure, "sp_ThemSanPham", par);
                    //cs.ID = Convert.ToInt32(par[0].Value);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region Update
        public static void UpdateSanPham(SanPham_BIZ sp)
        {
            try
            {
                using (SqlConnection con = SQLHelper.ConnectDB())//using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    SqlParameter[] par = new SqlParameter[17];
                    par[0] = new SqlParameter("@TenSanPham", sp.TenSanPham);
                    par[1] = new SqlParameter("@MoTaSanPham", sp.MoTaSanPham);
                    par[2] = new SqlParameter("@MaLoai", sp.MaLoai);
                    par[3] = new SqlParameter("@MaNSX", sp.MaNSX);
                    par[4] = new SqlParameter("@3G", sp._3g);
                    par[5] = new SqlParameter("@BoNho", sp.BoNho);
                    par[6] = new SqlParameter("@BoXuLy", sp.BoXuLy);
                    par[7] = new SqlParameter("@Camera", sp.Camera);
                    par[8] = new SqlParameter("@Gia", sp.Gia);
                    par[9] = new SqlParameter("@HDH", sp.HDH);
                    par[10] = new SqlParameter("@HinhLon", sp.HinhLon);
                    par[11] = new SqlParameter("@HinhNho", sp.HinhNho);
                    par[12] = new SqlParameter("@ManHinh", sp.ManHinh);
                    par[13] = new SqlParameter("@TinhNang", sp.TinhNang);
                    par[14] = new SqlParameter("@TrangThai", sp.TrangThai);
                    par[15] = new SqlParameter("@Wlan", sp.Wlan);
                    par[16] = new SqlParameter("@MaSanPham", sp.MaSanPham);
                    int rowNo = SQLHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "sp_CapNhatSanPham", par);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region Delete
        public static void DeleteSanPham(SanPham_BIZ sp)
        {
            try
            {
                using (SqlConnection conn = SQLHelper.ConnectDB())//using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                   // conn.Open();
                    SqlParameter[] par = new SqlParameter[1];
                    par[0] = new SqlParameter("@MaSanPham",sp.MaSanPham);
                    int rowNo = SQLHelper.ExecuteNonQuery(conn, CommandType.StoredProcedure, "sp_XoaSanPham", par);
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
