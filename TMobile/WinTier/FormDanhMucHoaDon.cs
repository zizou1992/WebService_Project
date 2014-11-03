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
    public partial class FormDanhMucHoaDon : Form
    {
        TrangThaiHoaDon_ServiceReference.TrangThaiHoaDonServiceClient tthdproxy = new TrangThaiHoaDon_ServiceReference.TrangThaiHoaDonServiceClient();
        DonDatHang_ServiceReference.DonDatHangServiceClient ddhproxy = new DonDatHang_ServiceReference.DonDatHangServiceClient();
        //List<DonHang_BIZ> donhangs = new List<DonHang_BIZ>();
        List<DonDatHang_ServiceReference.DonDatHang> donhangs = new List<DonDatHang_ServiceReference.DonDatHang>();
        public FormDanhMucHoaDon()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        public static string donhangID;
        public static string xuatkhoID;
        private void dgvDonHang_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == dgvDonHang.Columns["ChiTiet"].Index)
            {
                donhangID = dgvDonHang.Rows[e.RowIndex].Cells[0].Value.ToString();
                xuatkhoID = dgvDonHang.Rows[e.RowIndex].Cells[6].Value.ToString();
                FormChiTietDonHang fCTDH = new FormChiTietDonHang();               
                fCTDH.Show();
            }
        }

        private void FormDanhMucHoaDon_Load(object sender, EventArgs e)
        {
            //DonHang_BIZ dh = new DonHang_BIZ();
            DonDatHang_ServiceReference.DonDatHang dh = new DonDatHang_ServiceReference.DonDatHang();
            donhangs = ddhproxy.GetAllDonDatHang().ToList();
            //donhangs = DonHang_DAL.GetAllDonHang();
           // dgvDonHang.Row
            dgvDonHang.AutoGenerateColumns = false;
            dgvDonHang.DataSource = donhangs;
            cbTT.DataSource = tthdproxy.GetAll();//TrangThai_DAL.GetAllTrangThaiHoaDon();
            cbTT.DisplayMember = "TenTrangThai";
            cbTT.ValueMember = "TrangThai";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try 
            {
                DonDatHang_ServiceReference.DonDatHang dh = new DonDatHang_ServiceReference.DonDatHang();
                //DonHang_BIZ dh = new DonHang_BIZ();
                dh.DiaChiNhan=txtDiaChiNhan.Text.ToString();
                dh.DiaChiTT=txtDiaChiTT.Text.ToString();
                dh.DienThoaiNhan=txtSoDTNhan.Text.ToString();                
                dh.GhiChu=txtGhiChu.Text.ToString();
                dh.TrangThai = Convert.ToInt32(cbTT.SelectedValue.ToString());
                dh.MaDonDatHang = Convert.ToInt32(txtMaHD.Text.ToString());
                dh.DienThoaiTT = txtSDTTT.Text.ToString() ;
                dh.TenNguoiNhan = txtNguoiNhan.Text.ToString();
                dh.TenNguoiTT = txtNguoiTT.Text.ToString();
                dh.EmailKhachHang = txtEmail.Text.ToString();
                dh.MaKhachHang = Convert.ToInt32(txtMaKH.ToString());
                dh.NgayGiao = Convert.ToDateTime(txtNgayGiao.ToString());
                dh.NgayTao = Convert.ToDateTime(txtNgayTao.ToString());
                dh.TenKhachHang = txtNguoiNhan.ToString();
                dh.TongTien = Convert.ToDouble(txtTongTien);
                
                if (cbTT.SelectedValue.ToString() == "2")
                {
                    dh.NgayGiao = DateTime.Now;
                }
                if (cbTT.SelectedValue.ToString() == "1" || cbTT.SelectedValue.ToString() == "0")
                {
                    dh.NgayGiao = null;
                }
                //dh.Update();
                ddhproxy.UpdateDonDatHang(dh);
                donhangs = ddhproxy.GetAllDonDatHang().ToList();//DonHang_DAL.GetAllDonHang();
                dgvDonHang.AutoGenerateColumns = false;
                dgvDonHang.DataSource = donhangs;
            }
            catch (Exception ex)
            { MessageBox.Show("Không thay đổi được!"); }
        }

        private void dgvDonHang_SelectionChanged(object sender, EventArgs e)
        {
            if (dgvDonHang.SelectedRows.Count > 0)
            {
                //DonHang_BIZ dh = (DonHang_BIZ)dgvDonHang.SelectedRows[0].DataBoundItem;
                DonDatHang_ServiceReference.DonDatHang dh = (DonDatHang_ServiceReference.DonDatHang)dgvDonHang.SelectedRows[0].DataBoundItem;
                txtDiaChiNhan.Text = dh.DiaChiNhan;
                txtDiaChiTT.Text = dh.DiaChiTT;
                txtEmail.Text = dh.EmailKhachHang;
                txtMaHD.Text = dh.MaDonDatHang.ToString();
                txtMaKH.Text = dh.MaKhachHang.ToString();
                txtNgayGiao.Text = dh.NgayGiao.ToString();
                txtNgayTao.Text = dh.NgayTao.ToString();
                txtNguoiNhan.Text = dh.TenNguoiNhan;
                txtNguoiTT.Text = dh.TenNguoiTT;
                txtSDTTT.Text = dh.DienThoaiTT;
                txtSoDTNhan.Text = dh.DienThoaiNhan;
                txtTenKH.Text = dh.TenKhachHang;
                txtTongTien.Text = Format_Price(dh.TongTien.ToString());
                cbTT.SelectedValue = dh.TrangThai;
                if (dh.TrangThai == 2)
                {
                    btnLuu.Enabled = false;
                }
                else
                {
                    if (dh.TrangThai ==0 || dh.TrangThai == 1)
                    {
                        btnLuu.Enabled = true;
                    }
                }
            }
        }
        protected string Format_Price(string Price)
        {
            Price = Price.Replace(".", "");
            Price = Price.Replace(",", "");
            string tmp = "";
            while (Price.Length > 3)
            {
                tmp = "." + Price.Substring(Price.Length - 3) + tmp;
                Price = Price.Substring(0, Price.Length - 3);
            }
            tmp = Price + tmp;
            return tmp;
        }
        private void btnIn_Click(object sender, EventArgs e)
        {
            FormDanhSachHoaDon danhsachhoadon = new FormDanhSachHoaDon();
            rptHoaDon hoadon = new rptHoaDon();
            danhsachhoadon.crystalReportViewer1.ReportSource = hoadon;
            danhsachhoadon.Show();
        }

    }
}
