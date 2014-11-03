namespace WinTier
{
    partial class FormDanhMucSanPham
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
            this.btnDong = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.gvDMSP = new System.Windows.Forms.DataGridView();
            this.MaSanPham = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenSanPham = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this._loaisp = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this._nsx = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this._trangthai = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Gia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Xoa = new System.Windows.Forms.DataGridViewLinkColumn();
            this.panel2 = new System.Windows.Forms.Panel();
            this.txtBoxManHinh = new System.Windows.Forms.TextBox();
            this.btnHinhLon = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            this.btnSua = new System.Windows.Forms.Button();
            this.txtHinhLon = new System.Windows.Forms.TextBox();
            this.cbTrangThai = new System.Windows.Forms.ComboBox();
            this.cbLoaiSP = new System.Windows.Forms.ComboBox();
            this.cbNSX = new System.Windows.Forms.ComboBox();
            this.txtMoTa = new System.Windows.Forms.RichTextBox();
            this.txtTinhNang = new System.Windows.Forms.RichTextBox();
            this.txtNgayThem = new System.Windows.Forms.TextBox();
            this.label15 = new System.Windows.Forms.Label();
            this.txtBoNho = new System.Windows.Forms.TextBox();
            this.txtWlan = new System.Windows.Forms.TextBox();
            this.txt3G = new System.Windows.Forms.TextBox();
            this.txtCamera = new System.Windows.Forms.TextBox();
            this.txtBXL = new System.Windows.Forms.TextBox();
            this.txtHDH = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.Wlan = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.txtGia = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txtMaSP = new System.Windows.Forms.TextBox();
            this.txtTenSP = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.OFDHinhLon = new System.Windows.Forms.OpenFileDialog();
            this.OFDHinhNho = new System.Windows.Forms.OpenFileDialog();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvDMSP)).BeginInit();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnDong
            // 
            this.btnDong.Location = new System.Drawing.Point(876, 551);
            this.btnDong.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnDong.Name = "btnDong";
            this.btnDong.Size = new System.Drawing.Size(75, 30);
            this.btnDong.TabIndex = 1;
            this.btnDong.Text = "Đóng";
            this.btnDong.UseVisualStyleBackColor = true;
            this.btnDong.Click += new System.EventHandler(this.btnDong_Click);
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.Controls.Add(this.gvDMSP);
            this.panel1.Location = new System.Drawing.Point(12, 294);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(952, 250);
            this.panel1.TabIndex = 3;
            // 
            // gvDMSP
            // 
            this.gvDMSP.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvDMSP.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaSanPham,
            this.TenSanPham,
            this._loaisp,
            this._nsx,
            this._trangthai,
            this.Gia,
            this.Xoa});
            this.gvDMSP.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gvDMSP.Location = new System.Drawing.Point(0, 0);
            this.gvDMSP.Name = "gvDMSP";
            this.gvDMSP.Size = new System.Drawing.Size(952, 250);
            this.gvDMSP.TabIndex = 0;
            this.gvDMSP.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gvDMSP_CellContentClick);
            this.gvDMSP.SelectionChanged += new System.EventHandler(this.gvDMSP_SelectionChanged);
            // 
            // MaSanPham
            // 
            this.MaSanPham.DataPropertyName = "MaSanPham";
            this.MaSanPham.HeaderText = "Mã sản phẩm";
            this.MaSanPham.Name = "MaSanPham";
            this.MaSanPham.Width = 120;
            // 
            // TenSanPham
            // 
            this.TenSanPham.DataPropertyName = "TenSanPham";
            this.TenSanPham.HeaderText = "Tên sản phẩm";
            this.TenSanPham.Name = "TenSanPham";
            this.TenSanPham.Width = 170;
            // 
            // _loaisp
            // 
            this._loaisp.DataPropertyName = "_loaisp";
            this._loaisp.HeaderText = "Loại sản phẩm";
            this._loaisp.Name = "_loaisp";
            this._loaisp.Width = 120;
            // 
            // _nsx
            // 
            this._nsx.DataPropertyName = "_nsx";
            this._nsx.HeaderText = "Thương hiệu";
            this._nsx.Name = "_nsx";
            this._nsx.Width = 120;
            // 
            // _trangthai
            // 
            this._trangthai.DataPropertyName = "_trangthai";
            this._trangthai.HeaderText = "Trạng thái";
            this._trangthai.Name = "_trangthai";
            this._trangthai.Width = 120;
            // 
            // Gia
            // 
            this.Gia.DataPropertyName = "Gia";
            this.Gia.HeaderText = "Giá";
            this.Gia.Name = "Gia";
            this.Gia.Width = 120;
            // 
            // Xoa
            // 
            this.Xoa.FillWeight = 60F;
            this.Xoa.HeaderText = "Xoá";
            this.Xoa.Name = "Xoa";
            this.Xoa.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Xoa.Text = "Xoá";
            this.Xoa.UseColumnTextForLinkValue = true;
            this.Xoa.Width = 60;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.txtBoxManHinh);
            this.panel2.Controls.Add(this.btnHinhLon);
            this.panel2.Controls.Add(this.btnThem);
            this.panel2.Controls.Add(this.btnSua);
            this.panel2.Controls.Add(this.txtHinhLon);
            this.panel2.Controls.Add(this.cbTrangThai);
            this.panel2.Controls.Add(this.cbLoaiSP);
            this.panel2.Controls.Add(this.cbNSX);
            this.panel2.Controls.Add(this.txtMoTa);
            this.panel2.Controls.Add(this.txtTinhNang);
            this.panel2.Controls.Add(this.txtNgayThem);
            this.panel2.Controls.Add(this.label15);
            this.panel2.Controls.Add(this.txtBoNho);
            this.panel2.Controls.Add(this.txtWlan);
            this.panel2.Controls.Add(this.txt3G);
            this.panel2.Controls.Add(this.txtCamera);
            this.panel2.Controls.Add(this.txtBXL);
            this.panel2.Controls.Add(this.txtHDH);
            this.panel2.Controls.Add(this.label17);
            this.panel2.Controls.Add(this.label16);
            this.panel2.Controls.Add(this.Wlan);
            this.panel2.Controls.Add(this.label14);
            this.panel2.Controls.Add(this.label13);
            this.panel2.Controls.Add(this.txtGia);
            this.panel2.Controls.Add(this.label12);
            this.panel2.Controls.Add(this.label10);
            this.panel2.Controls.Add(this.label9);
            this.panel2.Controls.Add(this.label8);
            this.panel2.Controls.Add(this.label7);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.txtMaSP);
            this.panel2.Controls.Add(this.txtTenSP);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.panel2.Location = new System.Drawing.Point(12, 12);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(952, 276);
            this.panel2.TabIndex = 4;
            // 
            // txtBoxManHinh
            // 
            this.txtBoxManHinh.Location = new System.Drawing.Point(124, 143);
            this.txtBoxManHinh.Name = "txtBoxManHinh";
            this.txtBoxManHinh.Size = new System.Drawing.Size(126, 22);
            this.txtBoxManHinh.TabIndex = 41;
            // 
            // btnHinhLon
            // 
            this.btnHinhLon.Location = new System.Drawing.Point(258, 232);
            this.btnHinhLon.Name = "btnHinhLon";
            this.btnHinhLon.Size = new System.Drawing.Size(58, 23);
            this.btnHinhLon.TabIndex = 39;
            this.btnHinhLon.Text = "Chọn";
            this.btnHinhLon.UseVisualStyleBackColor = true;
            this.btnHinhLon.Click += new System.EventHandler(this.btnHinhLon_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(864, 149);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(75, 44);
            this.btnThem.TabIndex = 38;
            this.btnThem.Text = "Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click_1);
            // 
            // btnSua
            // 
            this.btnSua.Location = new System.Drawing.Point(864, 206);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(75, 45);
            this.btnSua.TabIndex = 37;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = true;
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // txtHinhLon
            // 
            this.txtHinhLon.Location = new System.Drawing.Point(124, 232);
            this.txtHinhLon.Name = "txtHinhLon";
            this.txtHinhLon.Size = new System.Drawing.Size(126, 22);
            this.txtHinhLon.TabIndex = 34;
            // 
            // cbTrangThai
            // 
            this.cbTrangThai.FormattingEnabled = true;
            this.cbTrangThai.Location = new System.Drawing.Point(373, 79);
            this.cbTrangThai.Name = "cbTrangThai";
            this.cbTrangThai.Size = new System.Drawing.Size(115, 24);
            this.cbTrangThai.TabIndex = 33;
            // 
            // cbLoaiSP
            // 
            this.cbLoaiSP.FormattingEnabled = true;
            this.cbLoaiSP.Location = new System.Drawing.Point(373, 46);
            this.cbLoaiSP.Name = "cbLoaiSP";
            this.cbLoaiSP.Size = new System.Drawing.Size(115, 24);
            this.cbLoaiSP.TabIndex = 32;
            // 
            // cbNSX
            // 
            this.cbNSX.FormattingEnabled = true;
            this.cbNSX.Location = new System.Drawing.Point(373, 13);
            this.cbNSX.Name = "cbNSX";
            this.cbNSX.Size = new System.Drawing.Size(115, 24);
            this.cbNSX.TabIndex = 31;
            // 
            // txtMoTa
            // 
            this.txtMoTa.Location = new System.Drawing.Point(516, 46);
            this.txtMoTa.Name = "txtMoTa";
            this.txtMoTa.Size = new System.Drawing.Size(325, 85);
            this.txtMoTa.TabIndex = 30;
            this.txtMoTa.Text = "";
            // 
            // txtTinhNang
            // 
            this.txtTinhNang.Location = new System.Drawing.Point(516, 171);
            this.txtTinhNang.Name = "txtTinhNang";
            this.txtTinhNang.Size = new System.Drawing.Size(325, 80);
            this.txtTinhNang.TabIndex = 29;
            this.txtTinhNang.Text = "";
            // 
            // txtNgayThem
            // 
            this.txtNgayThem.Enabled = false;
            this.txtNgayThem.Location = new System.Drawing.Point(373, 201);
            this.txtNgayThem.Name = "txtNgayThem";
            this.txtNgayThem.Size = new System.Drawing.Size(115, 22);
            this.txtNgayThem.TabIndex = 28;
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(277, 204);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(73, 16);
            this.label15.TabIndex = 27;
            this.label15.Text = "Ngày thêm";
            // 
            // txtBoNho
            // 
            this.txtBoNho.Location = new System.Drawing.Point(124, 201);
            this.txtBoNho.Name = "txtBoNho";
            this.txtBoNho.Size = new System.Drawing.Size(126, 22);
            this.txtBoNho.TabIndex = 26;
            // 
            // txtWlan
            // 
            this.txtWlan.Location = new System.Drawing.Point(373, 172);
            this.txtWlan.Name = "txtWlan";
            this.txtWlan.Size = new System.Drawing.Size(115, 22);
            this.txtWlan.TabIndex = 25;
            // 
            // txt3G
            // 
            this.txt3G.Location = new System.Drawing.Point(124, 171);
            this.txt3G.Name = "txt3G";
            this.txt3G.Size = new System.Drawing.Size(126, 22);
            this.txt3G.TabIndex = 24;
            // 
            // txtCamera
            // 
            this.txtCamera.Location = new System.Drawing.Point(373, 143);
            this.txtCamera.Name = "txtCamera";
            this.txtCamera.Size = new System.Drawing.Size(115, 22);
            this.txtCamera.TabIndex = 23;
            // 
            // txtBXL
            // 
            this.txtBXL.Location = new System.Drawing.Point(373, 112);
            this.txtBXL.Name = "txtBXL";
            this.txtBXL.Size = new System.Drawing.Size(115, 22);
            this.txtBXL.TabIndex = 21;
            // 
            // txtHDH
            // 
            this.txtHDH.Location = new System.Drawing.Point(124, 112);
            this.txtHDH.Name = "txtHDH";
            this.txtHDH.Size = new System.Drawing.Size(126, 22);
            this.txtHDH.TabIndex = 20;
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(24, 204);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(50, 16);
            this.label17.TabIndex = 19;
            this.label17.Text = "Bộ nhớ";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(24, 174);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(25, 16);
            this.label16.TabIndex = 18;
            this.label16.Text = "3G";
            // 
            // Wlan
            // 
            this.Wlan.AutoSize = true;
            this.Wlan.Location = new System.Drawing.Point(277, 174);
            this.Wlan.Name = "Wlan";
            this.Wlan.Size = new System.Drawing.Size(39, 16);
            this.Wlan.TabIndex = 17;
            this.Wlan.Text = "Wlan";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(513, 146);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(67, 16);
            this.label14.TabIndex = 16;
            this.label14.Text = "Tính năng";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(277, 115);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(54, 16);
            this.label13.TabIndex = 15;
            this.label13.Text = "Bộ xử lý";
            // 
            // txtGia
            // 
            this.txtGia.Location = new System.Drawing.Point(124, 81);
            this.txtGia.Name = "txtGia";
            this.txtGia.Size = new System.Drawing.Size(126, 22);
            this.txtGia.TabIndex = 14;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(275, 146);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(56, 16);
            this.label12.TabIndex = 13;
            this.label12.Text = "Camera";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(24, 84);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(29, 16);
            this.label10.TabIndex = 11;
            this.label10.Text = "Giá";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(24, 235);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(60, 16);
            this.label9.TabIndex = 10;
            this.label9.Text = "Hình ảnh";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(277, 84);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(68, 16);
            this.label8.TabIndex = 9;
            this.label8.Text = "Trạng thái";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(24, 146);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(61, 16);
            this.label7.TabIndex = 8;
            this.label7.Text = "Màn hình";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(24, 115);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(87, 16);
            this.label6.TabIndex = 7;
            this.label6.Text = "Hệ điều hành";
            // 
            // txtMaSP
            // 
            this.txtMaSP.Enabled = false;
            this.txtMaSP.Location = new System.Drawing.Point(124, 15);
            this.txtMaSP.Name = "txtMaSP";
            this.txtMaSP.Size = new System.Drawing.Size(126, 22);
            this.txtMaSP.TabIndex = 6;
            // 
            // txtTenSP
            // 
            this.txtTenSP.Location = new System.Drawing.Point(124, 48);
            this.txtTenSP.Name = "txtTenSP";
            this.txtTenSP.Size = new System.Drawing.Size(126, 22);
            this.txtTenSP.TabIndex = 5;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(513, 18);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(41, 16);
            this.label5.TabIndex = 4;
            this.label5.Text = "Mô tả";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(24, 18);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(89, 16);
            this.label4.TabIndex = 3;
            this.label4.Text = "Mã sản phẩm";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(277, 18);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(85, 16);
            this.label3.TabIndex = 2;
            this.label3.Text = "Nhà sản xuất";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(277, 51);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(96, 16);
            this.label2.TabIndex = 1;
            this.label2.Text = "Loại sản phẩm";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(24, 51);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(94, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Tên sản phẩm";
            // 
            // OFDHinhLon
            // 
            this.OFDHinhLon.FileName = "OpenFileHinhLon";
            this.OFDHinhLon.FileOk += new System.ComponentModel.CancelEventHandler(this.OFDHinhLon_FileOk);
            // 
            // FormDanhMucSanPham
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(976, 586);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.btnDong);
            this.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormDanhMucSanPham";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Danh mục sản phẩm";
            this.Load += new System.EventHandler(this.FormDanhMucSanPham_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gvDMSP)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnDong;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView gvDMSP;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TextBox txtHinhLon;
        private System.Windows.Forms.ComboBox cbTrangThai;
        private System.Windows.Forms.ComboBox cbLoaiSP;
        private System.Windows.Forms.ComboBox cbNSX;
        private System.Windows.Forms.RichTextBox txtMoTa;
        private System.Windows.Forms.RichTextBox txtTinhNang;
        private System.Windows.Forms.TextBox txtNgayThem;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.TextBox txtBoNho;
        private System.Windows.Forms.TextBox txtWlan;
        private System.Windows.Forms.TextBox txt3G;
        private System.Windows.Forms.TextBox txtCamera;
        private System.Windows.Forms.TextBox txtBXL;
        private System.Windows.Forms.TextBox txtHDH;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label Wlan;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox txtGia;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtMaSP;
        private System.Windows.Forms.TextBox txtTenSP;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.OpenFileDialog OFDHinhLon;
        private System.Windows.Forms.Button btnHinhLon;
        private System.Windows.Forms.OpenFileDialog OFDHinhNho;
        private System.Windows.Forms.TextBox txtBoxManHinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaSanPham;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenSanPham;
        private System.Windows.Forms.DataGridViewTextBoxColumn _loaisp;
        private System.Windows.Forms.DataGridViewTextBoxColumn _nsx;
        private System.Windows.Forms.DataGridViewTextBoxColumn _trangthai;
        private System.Windows.Forms.DataGridViewTextBoxColumn Gia;
        private System.Windows.Forms.DataGridViewLinkColumn Xoa;
    }
}