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
    public class LoaiSanPham_DAL
    {
        #region GetAll
        public List<LoaiSanPham_BIZ> GetAllLoaiSP()
        {
            try
            {
                List<LoaiSanPham_BIZ> list = new List<LoaiSanPham_BIZ>();
                using (SqlConnection con = SQLHelper.ConnectDB())
                {
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(con, CommandType.StoredProcedure, "sp_GetAllLoaiSP"))
                    {
                        while (dr.Read())
                        {
                            LoaiSanPham_BIZ data = new LoaiSanPham_BIZ();
                            data.MaLoai = SQLHelper.CheckStringNull(dr["MaLoai"]);
                            data.TenLoai = SQLHelper.CheckStringNull(dr["TenLoai"]);
                            data.MoTaLoai = SQLHelper.CheckStringNull(dr["MoTaLoai"]);
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
