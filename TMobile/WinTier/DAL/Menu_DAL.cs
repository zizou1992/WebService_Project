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
    public class Menu_DAL
    {
        #region GetAll
        public static List<Menu_BIZ> GetAllMenu()
        {
            try
            {
                List<Menu_BIZ> list = new List<Menu_BIZ>();
                using (SqlConnection conn = SQLHelper.ConnectDB())
                {
                    using (SqlDataReader dr = SQLHelper.ExecuteReader(conn, CommandType.StoredProcedure, "sp_GetAllMenu"))
                    {
                        while (dr.Read())
                        {
                            Menu_BIZ obj = new Menu_BIZ();
                            obj.idMenu = SQLHelper.CheckStringNull(dr["idMenu"]);
                            obj.Link = SQLHelper.CheckStringNull(dr["Link"]);
                            obj.Name = SQLHelper.CheckStringNull(dr["Name"]);
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
    }
}
