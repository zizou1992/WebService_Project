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
    public class NhaCungCap_DAL
    {
        #region GetAll
        public List<NhaCungCap_BIZ> GetAllNCC()
        {
            
            try
            {
                
                List<NhaCungCap_BIZ> list = new List<NhaCungCap_BIZ>();
                using (SqlConnection con = SQLHelper.ConnectDB())
                {
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(con, CommandType.StoredProcedure, "sp_GetAllNCC"))
                    {
                        while (dr.Read())
                        {
                            NhaCungCap_BIZ data = new NhaCungCap_BIZ();
                            data.MaNCC = SQLHelper.CheckStringNull(dr["MaNCC"]);
                            data.TenNCC = SQLHelper.CheckStringNull(dr["TenNCC"]);
                            data.SoDTNCC = SQLHelper.CheckStringNull(dr["SoDTNCC"]);
                            data.DiaChiNCC = SQLHelper.CheckStringNull(dr["DiaChiNCC"]);
                            data.EmailNCC = SQLHelper.CheckStringNull(dr["EmailNCC"]);
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
