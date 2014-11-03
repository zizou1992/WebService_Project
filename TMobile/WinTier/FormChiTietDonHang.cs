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
    
    public partial class FormChiTietDonHang : Form
    {
        string xk = FormDanhMucHoaDon.xuatkhoID;
        string id = FormDanhMucHoaDon.donhangID;
        DonDatHang_ServiceReference.DonDatHangServiceClient ddhproxy = new DonDatHang_ServiceReference.DonDatHangServiceClient();
        ChiTietDonHang_ServiceReference.ChiTietDonHangServiceClient ctdhproxy = new ChiTietDonHang_ServiceReference.ChiTietDonHangServiceClient();
        TonKho_ServiceReference.TonKhoServiceClient tkproxy = new TonKho_ServiceReference.TonKhoServiceClient();
        public FormChiTietDonHang()
        {
            InitializeComponent();
        }

        private void FormChiTietDonHang_Load(object sender, EventArgs e)
        {
            //ChiTietDonHang_BIZ ctdh=new ChiTietDonHang_BIZ();        
            ChiTietDonHang_ServiceReference.ChiTietDonHang ctdh = new ChiTietDonHang_ServiceReference.ChiTietDonHang();
            var chitietdonhang = ctdhproxy.GetChiTietDonHangById(Convert.ToInt32(id));
            dgvCTDH.AutoGenerateColumns = false;
            dgvCTDH.DataSource = new object[] { chitietdonhang };//ctdhproxy.GetChiTietDonHangById(id);//ChiTietDonHang_BIZ.GetCTDHByID(id);
            //btnXacNhan.Enabled = false;
            if (xk == "Đã xuất")
            {
                btnXacNhan.Enabled = false;
                btnKiemTra.Enabled = false;
            }
            else {
                if (xk == "Chưa xuất")
                {
                    btnKiemTra.Enabled = true;
                    btnXacNhan.Enabled = false;
                }
            }

        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnKiemTra_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < dgvCTDH.Rows.Count; i++)
            {
                //TonKho_BIZ tk = new TonKho_BIZ();
                TonKho_ServiceReference.TonKho tk = new TonKho_ServiceReference.TonKho();
                int masp = Convert.ToInt32(dgvCTDH.Rows[i].Cells[0].Value.ToString());
                int soluongmua=Int32.Parse(dgvCTDH.Rows[i].Cells[2].Value.ToString());
                int soluongton = tkproxy.KiemTraSoLuong(masp);//tk.KiemTraSoLuong(masp);
                if (soluongton >= soluongmua)
                {
                    dgvCTDH.Rows[i].Cells[5].Value="còn hàng";
                }
                else
                {
                    if (soluongton < soluongmua)
                    {
                        dgvCTDH.Rows[i].Cells[5].Value = "hết hàng";
                    }
                }
                btnXacNhan.Enabled = true;              
            }
            for (int i = 0; i < dgvCTDH.Rows.Count; i++)
            {
                if (dgvCTDH.Rows[i].Cells[5].Value.ToString() == "hết hàng")
                {
                    btnXacNhan.Enabled = false;
                }
            }
        }

        private void btnXacNhan_Click(object sender, EventArgs e)
        {
            try
            {
                for (int i = 0; i < dgvCTDH.Rows.Count; i++)
                {
                    //TonKho_BIZ tk = new TonKho_BIZ();
                    TonKho_ServiceReference.TonKho tk = new TonKho_ServiceReference.TonKho();
                    tk.MaSanPham = Convert.ToInt32(dgvCTDH.Rows[i].Cells[0].Value.ToString());
                    tk.NgayTon = DateTime.Now;
                    tk.SoLuongTon = Convert.ToInt32(dgvCTDH.Rows[i].Cells[2].Value.ToString());
                    //tk.CapNhatXuat();
                    tkproxy.InsertXuatKho(tk.MaSanPham, tk.SoLuongTon, tk.NgayTon);
                    //DonHang_BIZ dh = new DonHang_BIZ();
                    DonDatHang_ServiceReference.DonDatHang dh = new DonDatHang_ServiceReference.DonDatHang();
                    dh.MaDonDatHang = Convert.ToInt32(id);
                    dh.XuatKho = 1;
                    ddhproxy.UpdateDonDatHang(dh);
                    //dh.CapNhatTTXuatKho();

                }
                MessageBox.Show("Đã cập nhật tồn kho thành công!");
                btnKiemTra.Enabled = false;
                btnXacNhan.Enabled = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Đã xảy ra lỗi: " + ex.Message);
            }
        }
    }
}
