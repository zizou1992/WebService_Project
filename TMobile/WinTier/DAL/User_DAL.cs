using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using WinTier.BLL;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace WinTier.DAL
{
    public class User_DAL
    {
        #region[KiemTraDangNhap]
        public int KiemTraDangNhap(string user, String pw)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    using (SqlCommand cmd = new SqlCommand("sp_KiemTraDangNhap", con))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.Add(new SqlParameter("@username", user));
                        cmd.Parameters.Add(new SqlParameter("@pw", pw));
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        if (dt.Rows.Count >= 1)
                        {
                            return int.Parse(dt.Rows[0]["QuyenTaiKhoan"].ToString());
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
        #region GetUser
        public static void GetUser(User_BIZ user)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    SqlParameter[] par = new SqlParameter[2];
                    par[0] = new SqlParameter("@username", user.TenDangNhap);
                    par[1] = new SqlParameter("@pw", user.MatKhau);
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(con, CommandType.StoredProcedure, "sp_LayThongTinUser", par))
                    {
                        while (dr.Read())
                        {
                            user.MatKhau = SQLHelper.CheckStringNull(dr["MatKhau"]);
                            user.CMND = SQLHelper.CheckStringNull(dr["CMND"]);
                            user.DiaChi = SQLHelper.CheckStringNull(dr["DiaChi"]);
                            user.Email = SQLHelper.CheckStringNull(dr["Email"]);
                            user.HoTen = SQLHelper.CheckStringNull(dr["HoTen"]);
                            user.NgaySinh = SQLHelper.CheckStringNull(dr["NgaySinh"]);
                            user.QuyenTaiKhoan = SQLHelper.CheckStringNull(dr["QuyenTaiKhoan"]);
                            user.SoDT = SQLHelper.CheckStringNull(dr["SoDT"]);
                            user.TenDangNhap = SQLHelper.CheckStringNull(dr["TenDangNhap"]);
                            user.UserID = SQLHelper.CheckStringNull(dr["UserID"]);
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
        #region[GetByID]
        public System.Data.DataTable GetUserByID(string id)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    using (SqlCommand cmd = new SqlCommand("sp_GetUserByID", con))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.Add(new SqlParameter("@UserID", id));
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        return dt;

                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        #region Insert
        public static void InsertUser(User_BIZ obj)
        {

            try
            {

                using (SqlConnection con = new SqlConnection(SQLHelper.GetConnectionString()))
                {
                    //conn.Open();
                    SqlParameter[] par = new SqlParameter[9];
                    par[0] = new SqlParameter("@HoTen", obj.HoTen);
                    par[1] = new SqlParameter("@TenDangNhap", obj.TenDangNhap);
                    par[2] = new SqlParameter("@MatKhau", obj.MatKhau);
                    par[3] = new SqlParameter("@DiaChi", obj.DiaChi);
                    par[4] = new SqlParameter("@SoDT", obj.SoDT);
                    par[5] = new SqlParameter("@NgaySinh", obj.NgaySinh);
                    par[6] = new SqlParameter("@Email", obj.Email);
                    par[7] = new SqlParameter("@CMND", obj.CMND);
                    par[8] = new SqlParameter("@QuyenTaiKhoan", obj.QuyenTaiKhoan);                    
                    int rowNo = SQLHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "sp_ThemUser", par);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        #endregion
        /*#region[getall]
        public System.Data.DataTable GetAllUser()
        {
            using (SqlCommand cmd = new SqlCommand("sp_GetAllUser", GetConnection()))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;

            }
        }
        #endregion
        #region[GetByID]
        public System.Data.DataTable GetUserByID(string id)
        {
            using (SqlCommand cmd = new SqlCommand("sp_GetUserByID", GetConnection()))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@UserID", id));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;

            }
        }
        #endregion
        #region[Them]
        public bool ThemUser(User_BIZ data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_ThemUser", GetConnection()))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@TenDangNhap", data.TenDangNhap));
                cmd.Parameters.Add(new SqlParameter("@MatKhau", data.MatKhau));
                cmd.Parameters.Add(new SqlParameter("@HoTen", data.HoTen));
                cmd.Parameters.Add(new SqlParameter("@DiaChi", data.DiaChi));
                cmd.Parameters.Add(new SqlParameter("@SoDT", data.SoDT));
                cmd.Parameters.Add(new SqlParameter("@NgaySinh", data.NgaySinh));
                cmd.Parameters.Add(new SqlParameter("@Email", data.Email));
                cmd.Parameters.Add(new SqlParameter("@CMND", data.CMND));
                cmd.Parameters.Add(new SqlParameter("@QuyenTaiKhoan", data.QuyenTaiKhoan));
                cmd.ExecuteNonQuery();
            }
            return true;
        }
        #endregion
        #region[CapNhat]
        public bool CapNhatUser(User_BIZ data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_CapNhatUser", GetConnection()))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@UserID", data.UserID));
                cmd.Parameters.Add(new SqlParameter("@TenDangNhap", data.TenDangNhap));
                cmd.Parameters.Add(new SqlParameter("@MatKhau", data.MatKhau));
                cmd.Parameters.Add(new SqlParameter("@HoTen", data.HoTen));
                cmd.Parameters.Add(new SqlParameter("@DiaChi", data.DiaChi));
                cmd.Parameters.Add(new SqlParameter("@SoDT", data.SoDT));
                cmd.Parameters.Add(new SqlParameter("@QuyenTaiKhoan", data.QuyenTaiKhoan));
                cmd.Parameters.Add(new SqlParameter("@CMND", data.CMND));
                cmd.Parameters.Add(new SqlParameter("@Email", data.Email));
                cmd.ExecuteNonQuery();
            }
            return true;
        }
        public bool CapNhatTaiKhoan(User_BIZ us)
        {
            using (SqlCommand cmd = new SqlCommand("sp_CapNhatTaiKhoan", GetConnection()))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@UserID", us.UserID));
                cmd.Parameters.Add(new SqlParameter("@MatKhau", us.MatKhau));
                cmd.Parameters.Add(new SqlParameter("@HoTen", us.HoTen));
                cmd.Parameters.Add(new SqlParameter("@DiaChi", us.DiaChi));
                cmd.Parameters.Add(new SqlParameter("@SoDT", us.SoDT));
                cmd.Parameters.Add(new SqlParameter("@CMND", us.CMND));
                cmd.Parameters.Add(new SqlParameter("@Email", us.Email));
                cmd.ExecuteNonQuery();
            }
            return true;
            
        }
        #endregion
        #region[Xoa]
        public bool XoaUser(string id)
        {
            using (SqlCommand dbCmd = new SqlCommand("sp_XoaUser", GetConnection()))
            {
                dbCmd.CommandType = CommandType.StoredProcedure;
                dbCmd.Parameters.Add(new SqlParameter("@UserID", id));
                dbCmd.ExecuteNonQuery();
            }
            return true;
        }
        #endregion
        #region[KiemTraDangNhap]
        public int KiemTraDangNhap(string user, String pw)
        {
            using (SqlCommand cmd = new SqlCommand("sp_KiemTraDangNhap", GetConnection()))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@username", user));
                cmd.Parameters.Add(new SqlParameter("@pw", pw));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return int.Parse(dt.Rows[0]["QuyenTaiKhoan"].ToString());
                }
                else { return -1; }
            }
        }
        #endregion
        #region[LayThongTinUser]
        public System.Data.DataTable LayThongTinUser(string user, String pw)
        {
            using (SqlCommand cmd = new SqlCommand("sp_LayThongTinUser", GetConnection()))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@username", user));
                cmd.Parameters.Add(new SqlParameter("@pw", pw));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        
        #endregion */
    }
}