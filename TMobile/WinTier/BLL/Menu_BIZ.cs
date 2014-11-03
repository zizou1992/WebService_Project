using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WinTier.DAL;
namespace WinTier.BLL
{
    public class Menu_BIZ
    {
        private string _idMenu;
        private string _Link;
        private string _Name;
        public string idMenu
        {
            get { return _idMenu; }
            set { _idMenu = value; }
        }
        public string Link
        {
            get { return _Link; }
            set { _Link = value; }
        }
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }
        public static List<Menu_BIZ> GetAll()
        {
            return Menu_DAL.GetAllMenu();
        }
    }
}
