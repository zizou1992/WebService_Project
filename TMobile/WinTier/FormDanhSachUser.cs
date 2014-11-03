using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinTier
{
    public partial class FormDanhSachUser : Form
    {
        User_ServiceReference.UserServiceClient proxy;
        public FormDanhSachUser()
        {
            InitializeComponent();
        }
        private void FormDanhSachUser_Load_1(object sender, EventArgs e)
        {
            proxy = new User_ServiceReference.UserServiceClient();
            dgvDSUser.AutoGenerateColumns = false;
            dgvDSUser.DataSource = proxy.GetAllUser();
        }
    }
}
