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
    public partial class FormThongKeDoanhThu : Form
    {
        //List<DonHang_BIZ> donhangs = new List<DonHang_BIZ>();
        DonDatHang_ServiceReference.DonDatHangServiceClient ddh_proxy = 
            new DonDatHang_ServiceReference.DonDatHangServiceClient();
        List<DonDatHang_ServiceReference.DonDatHang> donhangs = 
            new List<DonDatHang_ServiceReference.DonDatHang>();
        public FormThongKeDoanhThu()
        {
            InitializeComponent();
        }

        private void FormThongKeDoanhThu_Load(object sender, EventArgs e)
        {
            //string Chuoi = " TrangThai=2 ";
            //DonHang_BIZ dh = new DonHang_BIZ();
            string ngaytu = "01-01-2001";
            string ngayden = "01-01-2001";
            donhangs = ddh_proxy.ThongKeDoanhThu(Convert.ToDateTime(ngaytu), Convert.ToDateTime(ngayden)).ToList();//DonHang_BIZ.ThongKe(Chuoi.ToString());
            dgvDonHang.AutoGenerateColumns = false;
            dgvDonHang.DataSource = donhangs;
            
        }

        private void btnLoc_Click(object sender, EventArgs e)
        {
            try
            {
                if (dtNgayTu.Checked || dtNgayDen.Checked)
                {
                    string ngaytu = "01-01-2001";
                    string ngayden = "01-01-2001";
                    //string Chuoi = " TrangThai=2 ";
                    if (dtNgayTu.Checked && dtNgayDen.Checked)
                    {
                        DateTime ngay_tu = dtNgayTu.Value;
                        DateTime ngay_den = dtNgayDen.Value;
                        int result = DateTime.Compare(ngay_tu, ngay_den);
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
                        //Chuoi += " and NgayGiao >= '" + NgayTu + "'";
                    }
                    if (dtNgayDen.Checked)
                    {
                        ngayden = dtNgayDen.Value.ToString();
                        //string NgayDen = ngayden.ToString("yyyy-MM-dd");
                        //Chuoi += " and NgayGiao < '" + NgayDen + "'";
                    }

                    dgvDonHang.AutoGenerateColumns = false;
                    dgvDonHang.DataSource = ddh_proxy.ThongKeDoanhThu(Convert.ToDateTime(ngaytu),Convert.ToDateTime(ngayden));//DonHang_BIZ.ThongKe(Chuoi.ToString());
                    double tongtien=0;
                    if (dgvDonHang.Rows.Count > 0)
                    {
                        for (int i = 0; i < dgvDonHang.Rows.Count; i++)
                        {
                            tongtien += Convert.ToDouble(dgvDonHang.Rows[i].Cells[4].Value);
                        }

                        txtDoanhThu.Text = Format_Price(tongtien.ToString());
                    }
                }
                else
                {
                    if (!dtNgayTu.Checked && !dtNgayDen.Checked)
                    {
                        string ngaytu = "01-01-2001";
                        string ngayden = "01-01-2001";
                       // DonHang_BIZ dh = new DonHang_BIZ();
                        donhangs = ddh_proxy.ThongKeDoanhThu(Convert.ToDateTime(ngaytu), Convert.ToDateTime(ngayden)).ToList();//DonHang_BIZ.ThongKe(Chuoi.ToString());
                        dgvDonHang.AutoGenerateColumns = false;
                        dgvDonHang.DataSource = donhangs;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Đã xãy ra lỗi!" + ex.Message);
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
        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnBaoCao_Click(object sender, EventArgs e)
        {
            FormBaoCaoDoanhThu baocaodoanhthu = new FormBaoCaoDoanhThu();
            rptDoanhThu doanhthu = new rptDoanhThu();
            baocaodoanhthu.crystalReportViewer1.ReportSource = doanhthu;
            baocaodoanhthu.Show();
        }

    }
}
