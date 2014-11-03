namespace WinTier
{
    public partial class FormThongKeTonKho
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.dtNgayDen = new System.Windows.Forms.DateTimePicker();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTenSanPham = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.btnLoc = new System.Windows.Forms.Button();
            this.dtNgayTu = new System.Windows.Forms.DateTimePicker();
            this.txtMaSP = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.dgvTKTonKho = new System.Windows.Forms.DataGridView();
            this.panel3 = new System.Windows.Forms.Panel();
            this.btnBaoCao = new System.Windows.Forms.Button();
            this.btnDong = new System.Windows.Forms.Button();
            this.MaSP = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this._tensanpham = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoLuong = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgayTon = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTKTonKho)).BeginInit();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.dtNgayDen);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.txtTenSanPham);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.btnLoc);
            this.panel1.Controls.Add(this.dtNgayTu);
            this.panel1.Controls.Add(this.txtMaSP);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(10, 16);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(566, 98);
            this.panel1.TabIndex = 0;
            // 
            // dtNgayDen
            // 
            this.dtNgayDen.CustomFormat = "  ";
            this.dtNgayDen.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtNgayDen.Location = new System.Drawing.Point(345, 56);
            this.dtNgayDen.MinDate = new System.DateTime(2012, 1, 1, 0, 0, 0, 0);
            this.dtNgayDen.Name = "dtNgayDen";
            this.dtNgayDen.ShowCheckBox = true;
            this.dtNgayDen.Size = new System.Drawing.Size(117, 23);
            this.dtNgayDen.TabIndex = 14;
            this.dtNgayDen.Value = new System.DateTime(2014, 1, 3, 0, 0, 0, 0);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(253, 57);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(60, 16);
            this.label4.TabIndex = 13;
            this.label4.Text = "đến ngày";
            // 
            // txtTenSanPham
            // 
            this.txtTenSanPham.Location = new System.Drawing.Point(345, 19);
            this.txtTenSanPham.Name = "txtTenSanPham";
            this.txtTenSanPham.Size = new System.Drawing.Size(116, 23);
            this.txtTenSanPham.TabIndex = 12;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(253, 22);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(90, 16);
            this.label3.TabIndex = 11;
            this.label3.Text = "Tên sản phẩm";
            // 
            // btnLoc
            // 
            this.btnLoc.Location = new System.Drawing.Point(479, 57);
            this.btnLoc.Name = "btnLoc";
            this.btnLoc.Size = new System.Drawing.Size(75, 25);
            this.btnLoc.TabIndex = 10;
            this.btnLoc.Text = "Lọc";
            this.btnLoc.UseVisualStyleBackColor = true;
            this.btnLoc.Click += new System.EventHandler(this.btnLoc_Click);
            // 
            // dtNgayTu
            // 
            this.dtNgayTu.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtNgayTu.Location = new System.Drawing.Point(110, 56);
            this.dtNgayTu.MinDate = new System.DateTime(2012, 1, 1, 0, 0, 0, 0);
            this.dtNgayTu.Name = "dtNgayTu";
            this.dtNgayTu.ShowCheckBox = true;
            this.dtNgayTu.Size = new System.Drawing.Size(119, 23);
            this.dtNgayTu.TabIndex = 9;
            this.dtNgayTu.Value = new System.DateTime(2014, 1, 3, 13, 42, 31, 0);
            // 
            // txtMaSP
            // 
            this.txtMaSP.Location = new System.Drawing.Point(110, 19);
            this.txtMaSP.Name = "txtMaSP";
            this.txtMaSP.Size = new System.Drawing.Size(119, 23);
            this.txtMaSP.TabIndex = 9;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(19, 57);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(77, 16);
            this.label2.TabIndex = 1;
            this.label2.Text = "Tồn từ ngày";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(19, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(85, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Mã sản phẩm";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.dgvTKTonKho);
            this.panel2.Location = new System.Drawing.Point(10, 122);
            this.panel2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(566, 306);
            this.panel2.TabIndex = 1;
            // 
            // dgvTKTonKho
            // 
            this.dgvTKTonKho.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTKTonKho.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaSP,
            this._tensanpham,
            this.SoLuong,
            this.NgayTon});
            this.dgvTKTonKho.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvTKTonKho.Location = new System.Drawing.Point(0, 0);
            this.dgvTKTonKho.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dgvTKTonKho.Name = "dgvTKTonKho";
            this.dgvTKTonKho.Size = new System.Drawing.Size(566, 306);
            this.dgvTKTonKho.TabIndex = 0;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.btnBaoCao);
            this.panel3.Controls.Add(this.btnDong);
            this.panel3.Location = new System.Drawing.Point(10, 436);
            this.panel3.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(566, 39);
            this.panel3.TabIndex = 2;
            // 
            // btnBaoCao
            // 
            this.btnBaoCao.Location = new System.Drawing.Point(312, 4);
            this.btnBaoCao.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnBaoCao.Name = "btnBaoCao";
            this.btnBaoCao.Size = new System.Drawing.Size(115, 28);
            this.btnBaoCao.TabIndex = 1;
            this.btnBaoCao.Text = "Xuất báo cáo";
            this.btnBaoCao.UseVisualStyleBackColor = true;
            this.btnBaoCao.Click += new System.EventHandler(this.btnBaoCao_Click);
            // 
            // btnDong
            // 
            this.btnDong.Location = new System.Drawing.Point(448, 4);
            this.btnDong.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnDong.Name = "btnDong";
            this.btnDong.Size = new System.Drawing.Size(87, 28);
            this.btnDong.TabIndex = 0;
            this.btnDong.Text = "Đóng";
            this.btnDong.UseVisualStyleBackColor = true;
            this.btnDong.Click += new System.EventHandler(this.btnDong_Click);
            // 
            // MaSP
            // 
            this.MaSP.DataPropertyName = "MaSanPham";
            this.MaSP.HeaderText = "Mã sản phẩm";
            this.MaSP.Name = "MaSP";
            this.MaSP.ReadOnly = true;
            this.MaSP.Width = 110;
            // 
            // _tensanpham
            // 
            this._tensanpham.DataPropertyName = "_tensanpham";
            this._tensanpham.HeaderText = "Tên sản phẩm";
            this._tensanpham.Name = "_tensanpham";
            this._tensanpham.ReadOnly = true;
            this._tensanpham.Width = 150;
            // 
            // SoLuong
            // 
            this.SoLuong.DataPropertyName = "SoLuongTon";
            this.SoLuong.HeaderText = "Số lượng";
            this.SoLuong.Name = "SoLuong";
            this.SoLuong.ReadOnly = true;
            // 
            // NgayTon
            // 
            this.NgayTon.DataPropertyName = "NgayTon";
            this.NgayTon.HeaderText = "Ngày tồn";
            this.NgayTon.Name = "NgayTon";
            this.NgayTon.ReadOnly = true;
            this.NgayTon.Width = 160;
            // 
            // FormThongKeTonKho
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(585, 478);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormThongKeTonKho";
            this.Text = "Thống kê sản phẩm tồn kho";
            this.Load += new System.EventHandler(this.FormThongKeTonKho_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvTKTonKho)).EndInit();
            this.panel3.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DateTimePicker dtNgayTu;
        private System.Windows.Forms.TextBox txtMaSP;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel2;
        public System.Windows.Forms.DataGridView dgvTKTonKho;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Button btnBaoCao;
        private System.Windows.Forms.Button btnDong;
        private System.Windows.Forms.Button btnLoc;
        private System.Windows.Forms.DateTimePicker dtNgayDen;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtTenSanPham;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaSP;
        private System.Windows.Forms.DataGridViewTextBoxColumn _tensanpham;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoLuong;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayTon;
    }
}