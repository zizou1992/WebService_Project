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
    public class NhaSanXuat_DAL
    {
        #region GetAll
        public List<NhaSanXuat_BIZ> GetAllNSX()
        {
            try
            {
                
                    List<NhaSanXuat_BIZ> list = new List<NhaSanXuat_BIZ>();
                    using (SqlConnection con = SQLHelper.ConnectDB())
                    {
                        using (SqlDataReader dr = SQLHelper.ExecuteReader(con, CommandType.StoredProcedure, "sp_GetAllNSX"))
                        {
                            while (dr.Read())
                            {
                                NhaSanXuat_BIZ data = new NhaSanXuat_BIZ();
                                data.MaNSX = SQLHelper.CheckStringNull(dr["MaNSX"]);
                                data.TenNSX = SQLHelper.CheckStringNull(dr["TenNSX"]);
                                data.MoTaNSX = SQLHelper.CheckStringNull(dr["GioiThieuNSX"]);
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
