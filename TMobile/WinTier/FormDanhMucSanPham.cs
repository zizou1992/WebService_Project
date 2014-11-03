using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinTier
{
    public partial class FormDanhMucSanPham : Form
    {
        SanPham_ServiceReference.SanPhamServiceClient sanpham_proxy = new SanPham_ServiceReference.SanPhamServiceClient();
        LoaiSanPham_ServiceReference.LoaiSanPhamServiceClient loaisp_proxy = new LoaiSanPham_ServiceReference.LoaiSanPhamServiceClient();
        NhaSanXuat_ServiceReference.NhaSanXuatServiceClient nsx_proxy = new NhaSanXuat_ServiceReference.NhaSanXuatServiceClient();
        //List<SanPham_BIZ> listSP;
        //List<SanPham_BIZ> sanphams = new List<SanPham_BIZ>();
        List<SanPham_ServiceReference.SanPham> sanphams = new List<SanPham_ServiceReference.SanPham>().ToList();
        public FormDanhMucSanPham()
        {
            InitializeComponent();
        }

        private void FormDanhMucSanPham_Load(object sender, EventArgs e)
        {
            //sanphams = SanPham_DAL.GetAllSanPham();
           // SanPham_BIZ sp = new SanPham_BIZ();
            gvDMSP.AutoGenerateColumns = false;
            
            //sp.GetAll();
            //sanphams = sp.SanPhamsCollection;
            //gvDMSP.AutoGenerateColumns = false;
            gvDMSP.DataSource = sanpham_proxy.GetAllSanPham();//sanphams;
            cbLoaiSP.DataSource = loaisp_proxy.GetAllLoaiSanPham();//LoaiSanPham_BIZ.GetAll(); 
            cbLoaiSP.DisplayMember = "TenLoai";
            cbLoaiSP.ValueMember = "MaLoai";
            cbNSX.DataSource = nsx_proxy.GetAllNhaSanXuat();//NhaSanXuat_BIZ.GetAll();
            cbNSX.DisplayMember = "TenNSX";
            cbNSX.ValueMember = "MaNSX";
            cbTrangThai.DataSource = sanpham_proxy.GetAllTrangThaiSanPham();//TrangThai_DAL.GetAllTrangThai();
            cbTrangThai.DisplayMember = "ten";
            cbTrangThai.ValueMember = "id";
        }


        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void gvDMSP_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == gvDMSP.Columns["Xoa"].Index)
            {
                //int row = gvDMSP.RowCount;
                //SanPham_BIZ sp = sanphams[e.RowIndex];
                SanPham_ServiceReference.SanPham sp = sanphams[e.RowIndex];
                if (DialogResult.Yes == MessageBox.Show("Bạn chắc chứ", "Hỏi", MessageBoxButtons.YesNo))
                {
                    try
                    {
                        sanpham_proxy.DeleteSanPham(sp.MaSanPham);//sp.Delete();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Không xóa được: " + ex.Message, "Lỗi");
                    }
                    sanphams.Remove(sp);
                    gvDMSP.DataSource = null;
                    gvDMSP.DataSource = sanphams;
                }
            }
        }

        private void btnThem_Click_1(object sender, EventArgs e)
        {
            try
            {
                //SanPham_BIZ data = new SanPham_BIZ();
                SanPham_ServiceReference.SanPham data = new SanPham_ServiceReference.SanPham();
                //data._3g = txt3G.Text;
                data.BoNho = txtBoNho.Text;
                data.BoXuLy = txtBXL.Text;
                data.Camera = txtCamera.Text;
                data.Gia = Convert.ToDouble(txtGia.Text);
                data.HDH = txtHDH.Text;
                data.HinhLon = txtHinhLon.Text;
               string filename = @"XDPM_Project\img\Mobile\" + txtHinhLon.Text;
                string pathStoredImage = Path.Combine(Application.StartupPath, @"..\..\..\");
                var filePath = pathStoredImage + filename;
                string tmplon = OFDHinhLon.FileName;
                FileInfo filon = new FileInfo(tmplon);
                filon.CopyTo(filePath);
                data.HinhNho = txtHinhLon.Text;
                data.MaLoai = Convert.ToInt32(cbLoaiSP.SelectedValue.ToString());
                data.ManHinh = txtBoxManHinh.Text;
                data.MaNSX = Convert.ToInt32(cbNSX.SelectedValue.ToString());
                //data.MaSanPham = txtManHinh.Text;
                data.MoTaSanPham = txtMoTa.Text;
                data.NgayThem = DateTime.Now;
                data.TenSanPham = txtTenSP.Text;
                data.TinhNang = txtTinhNang.Text;
                data.TrangThai = Convert.ToInt32(cbTrangThai.SelectedValue.ToString());
                data.WLan = txtWlan.Text;
                //SanPham_DAL.InsertSanPham(data);
                sanpham_proxy.InsertSanPham(data);
                MessageBox.Show("Thêm sản phẩm thành công!");
                //data.GetAll();
                sanpham_proxy.GetAllSanPham();
               // sanphams = data.SanPhamsCollection;
                gvDMSP.AutoGenerateColumns = false;
                gvDMSP.DataSource = sanpham_proxy.GetAllSanPham(); //sanphams;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Không thêm được! Lỗi:" + ex.Message );
            }
        }

        private void gvDMSP_SelectionChanged(object sender, EventArgs e)
        {
            if (gvDMSP.SelectedRows.Count > 0)
            {
                //SanPham_BIZ sp = (SanPham_BIZ)gvDMSP.SelectedRows[0].DataBoundItem;
                SanPham_ServiceReference.SanPham sp = (SanPham_ServiceReference.SanPham)gvDMSP.SelectedRows[0].DataBoundItem;
                txtMaSP.Text = (sp.MaSanPham).ToString();
                txt3G.Text = "";//sp._3g;
                txtBoNho.Text = sp.BoNho;
                txtBXL.Text = sp.BoXuLy;
                txtCamera.Text = sp.Camera;
                txtGia.Text = sp.Gia.ToString();
                txtHDH.Text = sp.HDH;
                txtHinhLon.Text = sp.HinhLon;
               
                txtBoxManHinh.Text = sp.ManHinh;
                txtMoTa.Text = sp.MoTaSanPham;
                txtNgayThem.Text = sp.NgayThem.ToString();
                txtTenSP.Text = sp.TenSanPham;
                txtTinhNang.Text = sp.TinhNang;
                txtWlan.Text = sp.WLan;
                cbLoaiSP.SelectedValue = sp.MaLoai;
                cbNSX.SelectedValue = sp.MaNSX;
                cbTrangThai.SelectedValue = sp.TrangThai;
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                SanPham_ServiceReference.SanPham data = new SanPham_ServiceReference.SanPham();
                //data._3g = txt3G.Text;
                data.BoNho = txtBoNho.Text;
                data.BoXuLy = txtBXL.Text;
                data.Camera = txtCamera.Text;
                data.Gia = Convert.ToDouble(txtGia.Text);
                data.HDH = txtHDH.Text;
                data.HinhLon = txtHinhLon.Text;
                //FileInfo fi = new FileInfo(Path.Combine(Application.StartupPath, "..\\..\\" + "/XDPM_Project_3/XDPM_Project/img/Mobile/"));
               // string filename = txtHinhLon.Text;
                //fi.CopyTo(Path.Combine(Application.StartupPath,"..\\..\\..\\"+filename));
                string filename = @"XDPM_Project\img\Mobile\" + txtHinhLon.Text;
                string pathStoredImage = Path.Combine(Application.StartupPath, @"..\..\..\");
                var filePath =  pathStoredImage + filename;
                string tmplon = OFDHinhLon.FileName;
                FileInfo filon = new FileInfo(tmplon);
                filon.CopyTo(filePath);
                data.HinhNho = txtHinhLon.Text;//txtHinhNho.Text;

                data.MaLoai = Convert.ToInt32(cbLoaiSP.SelectedValue.ToString());
                data.ManHinh = txtBoxManHinh.Text;
                data.MaNSX = Convert.ToInt32(cbNSX.SelectedValue.ToString());
                data.MaSanPham = Convert.ToInt32(txtMaSP.Text);//txtManHinh.Text;
                data.MoTaSanPham = txtMoTa.Text;
                data.NgayThem = DateTime.Now;
                data.TenSanPham = txtTenSP.Text;
                data.TinhNang = txtTinhNang.Text;
                data.TrangThai = Convert.ToInt32(cbTrangThai.SelectedValue.ToString());
                data.WLan = txtWlan.Text;
               // SanPham_DAL.UpdateSanPham(data);
                sanpham_proxy.UpdateSanPham(data);
                MessageBox.Show("Sửa thành công!");
                //data.GetAll();
                //sanphams = data.SanPhamsCollection;
                gvDMSP.AutoGenerateColumns = false;
                gvDMSP.DataSource = sanpham_proxy.GetAllSanPham();//sanphams;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Không sửa được! Lỗi:" + ex.Message);
            }
        }

        private void btnHinhLon_Click(object sender, EventArgs e)
        {
            OFDHinhLon.ShowDialog();
        }


        private void OFDHinhLon_FileOk(object sender, CancelEventArgs e)
        {
            txtHinhLon.Text = OFDHinhLon.SafeFileName;
        }


    }
}
