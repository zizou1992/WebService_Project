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
    public partial class FormDanhMucPhieuNhap : Form
    {
        PhieuNhap_ServiceReference.PhieuNhapServiceClient pn_proxy =
            new PhieuNhap_ServiceReference.PhieuNhapServiceClient();
        List<PhieuNhap_ServiceReference.PhieuNhap> phieunhaps = new List<PhieuNhap_ServiceReference.PhieuNhap>();
        //List<PhieuNhap_BIZ> phieunhaps = new List<PhieuNhap_BIZ>();
        public FormDanhMucPhieuNhap()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            FormNhapHang fNH = new FormNhapHang();
            fNH.Show();
        }

        private void FormDanhMucPhieuNhap_Load(object sender, EventArgs e)
        {
           // PhieuNhap_BIZ pn = new PhieuNhap_BIZ();
            //PhieuNhap_ServiceReference.PhieuNhap pn = new PhieuNhap_ServiceReference.PhieuNhap();
            dgvDMPN.AutoGenerateColumns = false;
            dgvDMPN.DataSource = pn_proxy.GetAllPhieuNhap();//PhieuNhap_DAL.GetAllPhieuNhap();
        }

        private void btnXuatBaoCao_Click(object sender, EventArgs e)
        {
            FormBaoCaoPhieuNhap baocaophieunhap = new FormBaoCaoPhieuNhap();
            rptPhieuNhap phieunhap = new rptPhieuNhap();
            baocaophieunhap.crystalReportViewer1.ReportSource = phieunhap;
            baocaophieunhap.Show();
        }

    }
}
