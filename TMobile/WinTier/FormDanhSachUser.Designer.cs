namespace WinTier
{
    partial class FormDanhSachUser
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dgvDSUser = new System.Windows.Forms.DataGridView();
            this.MaDonDatHang = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MaKhachHang = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgayTao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgayGiao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TongTien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TrangThai = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.XuatKho = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ChiTiet = new System.Windows.Forms.DataGridViewLinkColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDSUser)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvDSUser
            // 
            this.dgvDSUser.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDSUser.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaDonDatHang,
            this.MaKhachHang,
            this.NgayTao,
            this.NgayGiao,
            this.TongTien,
            this.TrangThai,
            this.XuatKho,
            this.ChiTiet});
            this.dgvDSUser.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvDSUser.Location = new System.Drawing.Point(0, 0);
            this.dgvDSUser.Name = "dgvDSUser";
            this.dgvDSUser.Size = new System.Drawing.Size(955, 376);
            this.dgvDSUser.TabIndex = 1;
            // 
            // MaDonDatHang
            // 
            this.MaDonDatHang.DataPropertyName = "UserID";
            this.MaDonDatHang.HeaderText = "User ID";
            this.MaDonDatHang.Name = "MaDonDatHang";
            // 
            // MaKhachHang
            // 
            this.MaKhachHang.DataPropertyName = "HoTen";
            this.MaKhachHang.HeaderText = "Họ tên";
            this.MaKhachHang.Name = "MaKhachHang";
            this.MaKhachHang.Width = 110;
            // 
            // NgayTao
            // 
            this.NgayTao.DataPropertyName = "NgayTao";
            this.NgayTao.HeaderText = "Ngày Tạo";
            this.NgayTao.Name = "NgayTao";
            this.NgayTao.ReadOnly = true;
            this.NgayTao.Width = 150;
            // 
            // NgayGiao
            // 
            this.NgayGiao.DataPropertyName = "Email";
            this.NgayGiao.HeaderText = "Email";
            this.NgayGiao.Name = "NgayGiao";
            this.NgayGiao.ReadOnly = true;
            this.NgayGiao.Width = 150;
            // 
            // TongTien
            // 
            this.TongTien.DataPropertyName = "SoDT";
            this.TongTien.HeaderText = "Số điện thoại";
            this.TongTien.Name = "TongTien";
            this.TongTien.ReadOnly = true;
            this.TongTien.Width = 120;
            // 
            // TrangThai
            // 
            this.TrangThai.DataPropertyName = "DiaChi";
            this.TrangThai.HeaderText = "Địa chỉ";
            this.TrangThai.Name = "TrangThai";
            this.TrangThai.ReadOnly = true;
            // 
            // XuatKho
            // 
            this.XuatKho.DataPropertyName = "TenDangNhap";
            this.XuatKho.HeaderText = "Tên đăng nhập";
            this.XuatKho.Name = "XuatKho";
            this.XuatKho.ReadOnly = true;
            // 
            // ChiTiet
            // 
            this.ChiTiet.HeaderText = "Xem chi tiết";
            this.ChiTiet.Name = "ChiTiet";
            this.ChiTiet.Text = "Xem chi tiết";
            this.ChiTiet.UseColumnTextForLinkValue = true;
            // 
            // FormDanhSachUser
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(955, 376);
            this.Controls.Add(this.dgvDSUser);
            this.Name = "FormDanhSachUser";
            this.Text = "FormDanhSachUser";
            this.Load += new System.EventHandler(this.FormDanhSachUser_Load_1);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDSUser)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvDSUser;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaDonDatHang;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaKhachHang;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayTao;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayGiao;
        private System.Windows.Forms.DataGridViewTextBoxColumn TongTien;
        private System.Windows.Forms.DataGridViewTextBoxColumn TrangThai;
        private System.Windows.Forms.DataGridViewTextBoxColumn XuatKho;
        private System.Windows.Forms.DataGridViewLinkColumn ChiTiet;
    }
}