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
    public partial class FormNhapHang : Form
    {
        NhaCungCap_ServiceReference.NhaCungCapServiceClient ncc_proxy = 
            new NhaCungCap_ServiceReference.NhaCungCapServiceClient();
        PhieuNhap_ServiceReference.PhieuNhapServiceClient pn_proxy = 
            new PhieuNhap_ServiceReference.PhieuNhapServiceClient();
        ChiTietPhieuNhap_ServiceReference.ChiTietPhieuNhapServiceClient ctpn_proxy = 
            new ChiTietPhieuNhap_ServiceReference.ChiTietPhieuNhapServiceClient();
        TonKho_ServiceReference.TonKhoServiceClient tk_proxy = 
            new TonKho_ServiceReference.TonKhoServiceClient();
        public FormNhapHang()
        {
            InitializeComponent();
        }
        private void FormNhapHang_Load(object sender, EventArgs e)
        {
            cbNCC.DataSource = ncc_proxy.GetAllNhaCungCap();//NhaCungCap_BIZ.GetAll();
            cbNCC.DisplayMember = "TenNCC";
            cbNCC.ValueMember = "MaNCC";
        }
        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private void btnLuu_Click(object sender, EventArgs e)
        {
            try
           {
                //PhieuNhap_BIZ pn = new PhieuNhap_BIZ();
                //PhieuNhap_ServiceReference.
               PhieuNhap_ServiceReference.PhieuNhap pn = new PhieuNhap_ServiceReference.PhieuNhap();
                double tongtien = 0;
                if (dgvPhieuNhap.Rows.Count > 0)
                {
                    pn.MaNCC = Convert.ToInt32(cbNCC.SelectedValue);
                    pn.NgayNhap = DateTime.Now;
                    for (int i = 0; i < dgvPhieuNhap.Rows.Count; i++)
                    {
                        tongtien += Convert.ToDouble(dgvPhieuNhap.Rows[i].Cells[3].Value);
                    }
                    txtTongTien.Text = tongtien.ToString();
                    pn.TongTienNhap = tongtien;
                    //pn.Insert();
                    pn_proxy.InsertPhieuNhap(pn);
                    int maxPNId = pn_proxy.GetMaxId();//PhieuNhap_DAL.MaxId("PhieuNhap", "MaPhieuNhap");
                    for (int i = 0; i < dgvPhieuNhap.Rows.Count - 1 ; i++)
                    {
                        //ChiTietPhieuNhap_BIZ ctpn = new ChiTietPhieuNhap_BIZ();
                        ChiTietPhieuNhap_ServiceReference.ChiTietPhieuNhap ctpn = new ChiTietPhieuNhap_ServiceReference.ChiTietPhieuNhap();
                        ctpn.MaPhieuNhap = maxPNId;
                        ctpn.MaSanPham = Convert.ToInt32(dgvPhieuNhap.Rows[i].Cells[0].Value);
                        ctpn.SoLuongNhap = Convert.ToInt32(dgvPhieuNhap.Rows[i].Cells[1].Value);
                        ctpn.DonGia = Convert.ToDouble(dgvPhieuNhap.Rows[i].Cells[2].Value);
                        ctpn.TongCongNhap = Convert.ToDouble(dgvPhieuNhap.Rows[i].Cells[3].Value);
                        ctpn_proxy.InsertChiTietPhieuNhap(ctpn);
                        //ctpn.Insert();
                    }
                   for (int j = 0; j < dgvPhieuNhap.Rows.Count - 1; j++)
                    {
                        //TonKho_BIZ tk = new TonKho_BIZ();
                        TonKho_ServiceReference.TonKho tk = new TonKho_ServiceReference.TonKho();
                        tk.MaSanPham = Convert.ToInt32(dgvPhieuNhap.Rows[j].Cells[0].Value);
                        int masp = tk.MaSanPham;
                        tk.NgayTon = DateTime.Now;
                        tk.SoLuongTon = Convert.ToInt32(dgvPhieuNhap.Rows[j].Cells[1].Value);
                        if (tk_proxy.KiemTraSPTonKho(masp)==false)//(tk.KiemTraSPTonKho(masp) == -1)
                        {
                            tk_proxy.InsertNhapKho(masp,tk.SoLuongTon,tk.NgayTon);//tk.Insert();
                        }
                        else
                        {
                            if (tk_proxy.KiemTraSPTonKho(masp)==true)//tk.KiemTraSPTonKho(masp) == 1)
                            {
                                tk_proxy.InsertNhapKho(masp, tk.SoLuongTon, tk.NgayTon);//tk.CapNhatThem();
                            }
                        }
                    }
                }
                MessageBox.Show("Nhập thành công!");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Xảy ra lỗi: " + ex.Message);
           }
            
        }

        private void dgvPhieuNhap_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
                double tongtien = 0;
                double total = Convert.ToDouble(dgvPhieuNhap["SoLuongNhap", e.RowIndex].Value) * Convert.ToDouble(dgvPhieuNhap["DonGia", e.RowIndex].Value);                
                dgvPhieuNhap["TongCongNhap", e.RowIndex].Value = total.ToString();
                for (int i = 0; i < dgvPhieuNhap.Rows.Count; i++)
                {
                    tongtien += Convert.ToDouble(dgvPhieuNhap.Rows[i].Cells[3].Value);
                }
                txtTongTien.Text = Format_Price(tongtien.ToString());
                      
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
    }
}
