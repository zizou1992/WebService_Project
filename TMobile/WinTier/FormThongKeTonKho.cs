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
    public partial class FormThongKeTonKho : Form
    {
        TonKho_ServiceReference.TonKhoServiceClient tk_proxy = new TonKho_ServiceReference.TonKhoServiceClient();
        public FormThongKeTonKho()
        {
            InitializeComponent();
        }

        private void FormThongKeTonKho_Load(object sender, EventArgs e)
        {
            dgvTKTonKho.AutoGenerateColumns=false;
            dgvTKTonKho.DataSource = tk_proxy.GetAll();//TonKho_BIZ.GetAll();
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnLoc_Click(object sender, EventArgs e)
        {
            int sanphamid=0;
            string tensp = "";
            
            string ngaytu="2001-01-01";
            
            
            string ngayden="2001-01-01";
            try
            {
                if (txtMaSP.Text != "" || txtTenSanPham.Text != "" || dtNgayTu.Checked || dtNgayDen.Checked || txtTenSanPham.Text != "")
                {
                    
                    //string Chuoi = " SanPham.MaSanPham = TonKho.MaSanPham ";
                    if (txtMaSP.Text != "")
                    {
                        sanphamid = Convert.ToInt32(txtMaSP.Text);//Chuoi += " and TonKho.MaSanPham = '" + txtMaSP.Text + "'";
                    }
                    if (dtNgayTu.Checked && dtNgayDen.Checked)
                    {
                        ngaytu = (Convert.ToDateTime(dtNgayTu.Value)).ToString();
                        ngayden = (Convert.ToDateTime(dtNgayDen.Value)).ToString();
                        int result = DateTime.Compare(Convert.ToDateTime(ngaytu), Convert.ToDateTime(ngayden));
                        if (result == 1)
                        {
                            MessageBox.Show("Phải nhập ngày từ nhỏ hơn ngày đến!");
                            dtNgayTu.Focus();

                        }
                    }
                    if (dtNgayTu.Checked)
                    {
                        ngaytu = dtNgayTu.Value.Date.ToString();
                        //string NgayTu = ngaytu.ToString("yyyy-MM-dd");
                        //Chuoi += " and NgayTon >= '" + NgayTu + "'";
                    }
                    if (dtNgayDen.Checked)
                    {
                        ngayden = dtNgayDen.Value.Date.ToString();//AddDays(1);
                        //string NgayDen = ngayden.ToString("yyyy-MM-dd");
                        //Chuoi += " and NgayTon < '" + NgayDen + "'";
                    }
                    if (txtTenSanPham.Text != "") {
                        tensp = txtTenSanPham.Text.ToString();
                    }
                    dgvTKTonKho.AutoGenerateColumns = false;
                    dgvTKTonKho.DataSource = tk_proxy.TimKiemTonKho(sanphamid, Convert.ToDateTime(ngaytu), Convert.ToDateTime(ngayden),tensp);//TonKho_BIZ.ThongKeTonKho(Chuoi.ToString());
                }
                else
                {
                    if (txtMaSP.Text == "" && txtTenSanPham.Text == "" && !dtNgayTu.Checked && !dtNgayDen.Checked)
                    {
                        dgvTKTonKho.AutoGenerateColumns = false;
                        dgvTKTonKho.DataSource = tk_proxy.GetAll();//tk_proxy.GetTonKhoByNgay(DateTime.Now,DateTime.Now);//TonKho_BIZ.GetAll();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Đã xãy ra lỗi!" +ex.Message);
            }
        }

        private void btnBaoCao_Click(object sender, EventArgs e)
        {
            frmBaoCaoTonKho frmbaocaotonkho = new frmBaoCaoTonKho();
            rptBaoCaoTonKho rptbaocaotonkho = new rptBaoCaoTonKho();
            frmbaocaotonkho.crystalReportViewer1.ReportSource = rptbaocaotonkho;
            frmbaocaotonkho.Show();
        }

    }
}
