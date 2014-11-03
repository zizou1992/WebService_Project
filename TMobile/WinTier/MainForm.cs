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
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void danhMụcSảnPhẩmToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormDanhMucSanPham dmsp = new FormDanhMucSanPham();
            dmsp.Show();
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void lậpPhiếuNhậpHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormNhapHang frNhapHang = new FormNhapHang();
            frNhapHang.Show();
        }

        private void danhMụcHoáĐơnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormDanhMucHoaDon frmDMHD = new FormDanhMucHoaDon();
            frmDMHD.Show();
        }

        private void danhMụcPhiếuNhậpKhoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormDanhMucPhieuNhap fDMPN = new FormDanhMucPhieuNhap();
            fDMPN.Show();
        }

        private void sảnPhầmTồnKhoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormThongKeTonKho fTK = new FormThongKeTonKho();
            fTK.Show();
        }

        private void doanhThuToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormThongKeDoanhThu fDoanhThu = new FormThongKeDoanhThu();
            fDoanhThu.Show();
        }

        private void danhSáchUserToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormDanhSachUser fDSUser = new FormDanhSachUser();
            fDSUser.Show();
        }
    }
}
