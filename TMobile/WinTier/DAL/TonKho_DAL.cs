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
    public class TonKho_DAL
    {
        #region Insert
        public static void InsertTonKho(TonKho_BIZ tk)
        {
            try
            {

                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    SqlParameter[] par = new SqlParameter[3];
                    par[0] = new SqlParameter("@MaSanPham", tk.MaSanPham);
                    par[1] = new SqlParameter("@NgayTon", tk.NgayTon);
                    par[2] = new SqlParameter("@SoLuongTon", tk.SoLuongTon);
                    int rowNo = SQLHelper.ExecuteNonQuery(conn, CommandType.StoredProcedure, "sp_ThemTonKho", par);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        public static void CapNhatThem(TonKho_BIZ tk)
        {
            try
            {

                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    SqlParameter[] par = new SqlParameter[3];
                    par[0] = new SqlParameter("@MaSanPham", tk.MaSanPham);
                    par[1] = new SqlParameter("@NgayTon", tk.NgayTon);
                    par[2] = new SqlParameter("@SoLuongTon", tk.SoLuongTon);
                    int rowNo = SQLHelper.ExecuteNonQuery(conn, CommandType.StoredProcedure, "sp_CapNhatThemTonKho", par);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region XuatSoLuongTonKho
        public static void CapNhatXuat(TonKho_BIZ tk)
        {
            try
            {

                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    SqlParameter[] par = new SqlParameter[3];
                    par[0] = new SqlParameter("@MaSanPham", tk.MaSanPham);
                    par[1] = new SqlParameter("@NgayTon", tk.NgayTon);
                    par[2] = new SqlParameter("@SoLuongXuat", tk.SoLuongTon);
                    int rowNo = SQLHelper.ExecuteNonQuery(conn, CommandType.StoredProcedure, "sp_CapNhatXuatTonKho", par);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region Update
        public static void UpdateTonKho(TonKho_BIZ tk)
        {
            try
            {

                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    SqlParameter[] par = new SqlParameter[3];
                    par[0] = new SqlParameter("@MaSanPham", tk.MaSanPham);
                    par[1] = new SqlParameter("@NgayTon", tk.NgayTon);
                    par[2] = new SqlParameter("@SoLuongTon", tk.SoLuongTon);
                    int rowNo = SQLHelper.ExecuteNonQuery(conn, CommandType.StoredProcedure, "sp_CapNhatTonKho", par);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region KiemTraSP
        public static int KiemTraSPTonKho(string masp)
        {
            try
            {
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    using (SqlCommand cmd = new SqlCommand("sp_KiemTraSPKho", conn))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.Add(new SqlParameter("@MaSP", masp ));
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        if (dt.Rows.Count >= 1)
                        {
                            return 1;
                        }
                        else { return -1; }
                    }
                }
                
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region KiemTraSoLuong
        public static int KiemTraSoLuong(string masp)
        {
            try
            {
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    using (SqlCommand cmd = new SqlCommand("sp_KiemTraSoLuong", conn))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.Add(new SqlParameter("@MaSanPham", masp));
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        if (dt.Rows.Count >= 1)
                        {
                            return int.Parse(dt.Rows[0]["SoLuongTon"].ToString());
                        }
                        else { return -1; }
                    }
                }

            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region GetAll
        public static List<TonKho_BIZ> GetAll()
        {
            try
            {
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    List<TonKho_BIZ> list = new List<TonKho_BIZ>();
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_GetAllTonKho"))
                    {
                        while (dr.Read())
                        {
                            TonKho_BIZ obj = new TonKho_BIZ();
                            obj.MaSanPham = SQLHelper.CheckStringNull(dr["MaSanPham"]);
                            obj.NgayTon = SQLHelper.CheckStringNull(dr["NgayTon"]);
                            obj.SoLuongTon = SQLHelper.CheckStringNull(dr["SoLuongTon"]);
                            obj.TenSP = SQLHelper.CheckStringNull(dr["ten_sp"]);
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
        #region ThongKe
        public static List<TonKho_BIZ> ThongKe(string Where)
        {
            try
            {
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    List<TonKho_BIZ> list = new List<TonKho_BIZ>();
                    SqlParameter[] par = new SqlParameter[1];
                    par[0] = new SqlParameter("@Where", Where);
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_ThongKeTonKho", par))
                    {
                        while (dr.Read())
                        {
                            TonKho_BIZ obj = new TonKho_BIZ();
                            obj.MaSanPham = SQLHelper.CheckStringNull(dr["MaSanPham"]);
                            obj.NgayTon = SQLHelper.CheckStringNull(dr["NgayTon"]);
                            obj.SoLuongTon = SQLHelper.CheckStringNull(dr["SoLuongTon"]);
                            obj.TenSP = SQLHelper.CheckStringNull(dr["ten_sp"]);
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
        #region GetByTOP
        public static List<TonKho_BIZ> GetByTop(string Top, string Where, string Order)
        {
            try
            {
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    List<TonKho_BIZ> list = new List<TonKho_BIZ>();
                    SqlParameter[] par = new SqlParameter[3];
                    par[0] = new SqlParameter("@Top", Top);
                    par[1] = new SqlParameter("@Where", Where);
                    par[2] = new SqlParameter("@Order", Order);
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_GetTonKhoByTop", par))
                    {
                        while (dr.Read())
                        {
                            TonKho_BIZ obj = new TonKho_BIZ();
                            obj.MaSanPham = SQLHelper.CheckStringNull(dr["TonKho.MaSanPham"]);
                            obj.NgayTon = SQLHelper.CheckStringNull(dr["NgayTon"]);
                            obj.SoLuongTon = SQLHelper.CheckStringNull(dr["SoLuongTon"]);
                            obj.TenSP = SQLHelper.CheckStringNull(dr["ten_sp"]);
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
    }
}
