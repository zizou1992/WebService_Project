namespace WinTier
{
    partial class FormThongKeDoanhThu
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
            this.btnLoc = new System.Windows.Forms.Button();
            this.dtNgayTu = new System.Windows.Forms.DateTimePicker();
            this.label2 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.txtDoanhThu = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.dgvDonHang = new System.Windows.Forms.DataGridView();
            this.MaDH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MaKhachHang = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgayTao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgayGiao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TongTien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel3 = new System.Windows.Forms.Panel();
            this.btnBaoCao = new System.Windows.Forms.Button();
            this.btnDong = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDonHang)).BeginInit();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.dtNgayDen);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.btnLoc);
            this.panel1.Controls.Add(this.dtNgayTu);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Location = new System.Drawing.Point(14, 15);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(712, 68);
            this.panel1.TabIndex = 0;
            // 
            // dtNgayDen
            // 
            this.dtNgayDen.CustomFormat = "  yyyy-MM-dd";
            this.dtNgayDen.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtNgayDen.Location = new System.Drawing.Point(400, 23);
            this.dtNgayDen.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtNgayDen.MinDate = new System.DateTime(2011, 3, 3, 0, 0, 0, 0);
            this.dtNgayDen.Name = "dtNgayDen";
            this.dtNgayDen.ShowCheckBox = true;
            this.dtNgayDen.Size = new System.Drawing.Size(164, 23);
            this.dtNgayDen.TabIndex = 19;
            this.dtNgayDen.Value = new System.DateTime(2014, 1, 6, 0, 0, 0, 0);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(315, 28);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(60, 16);
            this.label4.TabIndex = 18;
            this.label4.Text = "đến ngày";
            // 
            // btnLoc
            // 
            this.btnLoc.Location = new System.Drawing.Point(601, 21);
            this.btnLoc.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnLoc.Name = "btnLoc";
            this.btnLoc.Size = new System.Drawing.Size(87, 31);
            this.btnLoc.TabIndex = 17;
            this.btnLoc.Text = "Lọc";
            this.btnLoc.UseVisualStyleBackColor = true;
            this.btnLoc.Click += new System.EventHandler(this.btnLoc_Click);
            // 
            // dtNgayTu
            // 
            this.dtNgayTu.CustomFormat = "yyyy-MM-dd";
            this.dtNgayTu.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtNgayTu.Location = new System.Drawing.Point(100, 23);
            this.dtNgayTu.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtNgayTu.MinDate = new System.DateTime(2010, 2, 3, 0, 0, 0, 0);
            this.dtNgayTu.Name = "dtNgayTu";
            this.dtNgayTu.ShowCheckBox = true;
            this.dtNgayTu.Size = new System.Drawing.Size(170, 23);
            this.dtNgayTu.TabIndex = 16;
            this.dtNgayTu.Value = new System.DateTime(2014, 1, 6, 0, 0, 0, 0);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(17, 28);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(55, 16);
            this.label2.TabIndex = 15;
            this.label2.Text = "Từ ngày";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.txtDoanhThu);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.dgvDonHang);
            this.panel2.Location = new System.Drawing.Point(14, 90);
            this.panel2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(712, 430);
            this.panel2.TabIndex = 1;
            // 
            // txtDoanhThu
            // 
            this.txtDoanhThu.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.txtDoanhThu.Location = new System.Drawing.Point(529, 389);
            this.txtDoanhThu.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtDoanhThu.Name = "txtDoanhThu";
            this.txtDoanhThu.ReadOnly = true;
            this.txtDoanhThu.Size = new System.Drawing.Size(170, 27);
            this.txtDoanhThu.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.Location = new System.Drawing.Point(410, 393);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(113, 18);
            this.label1.TabIndex = 1;
            this.label1.Text = "Tổng doanh thu";
            // 
            // dgvDonHang
            // 
            this.dgvDonHang.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDonHang.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaDH,
            this.MaKhachHang,
            this.NgayTao,
            this.NgayGiao,
            this.TongTien});
            this.dgvDonHang.Dock = System.Windows.Forms.DockStyle.Top;
            this.dgvDonHang.Location = new System.Drawing.Point(0, 0);
            this.dgvDonHang.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dgvDonHang.Name = "dgvDonHang";
            this.dgvDonHang.Size = new System.Drawing.Size(712, 374);
            this.dgvDonHang.TabIndex = 0;
            // 
            // MaDH
            // 
            this.MaDH.DataPropertyName = "MaDonDatHang";
            this.MaDH.HeaderText = "Mã đơn hàng";
            this.MaDH.Name = "MaDH";
            this.MaDH.ReadOnly = true;
            this.MaDH.Width = 120;
            // 
            // MaKhachHang
            // 
            this.MaKhachHang.DataPropertyName = "MaKhachHang";
            this.MaKhachHang.HeaderText = "Mã khách hàng";
            this.MaKhachHang.Name = "MaKhachHang";
            this.MaKhachHang.ReadOnly = true;
            this.MaKhachHang.Width = 120;
            // 
            // NgayTao
            // 
            this.NgayTao.DataPropertyName = "NgayTao";
            this.NgayTao.HeaderText = "Ngày tạo";
            this.NgayTao.Name = "NgayTao";
            this.NgayTao.ReadOnly = true;
            this.NgayTao.Width = 150;
            // 
            // NgayGiao
            // 
            this.NgayGiao.DataPropertyName = "NgayGiao";
            this.NgayGiao.HeaderText = "Ngày giao";
            this.NgayGiao.Name = "NgayGiao";
            this.NgayGiao.ReadOnly = true;
            this.NgayGiao.Width = 150;
            // 
            // TongTien
            // 
            this.TongTien.DataPropertyName = "TongTien";
            this.TongTien.HeaderText = "Tổng tiền";
            this.TongTien.Name = "TongTien";
            this.TongTien.ReadOnly = true;
            this.TongTien.Width = 120;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.btnBaoCao);
            this.panel3.Controls.Add(this.btnDong);
            this.panel3.Location = new System.Drawing.Point(14, 527);
            this.panel3.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(712, 38);
            this.panel3.TabIndex = 2;
            // 
            // btnBaoCao
            // 
            this.btnBaoCao.Location = new System.Drawing.Point(491, 6);
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
            this.btnDong.Location = new System.Drawing.Point(612, 6);
            this.btnDong.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnDong.Name = "btnDong";
            this.btnDong.Size = new System.Drawing.Size(87, 28);
            this.btnDong.TabIndex = 0;
            this.btnDong.Text = "Đóng";
            this.btnDong.UseVisualStyleBackColor = true;
            this.btnDong.Click += new System.EventHandler(this.btnDong_Click);
            // 
            // FormThongKeDoanhThu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(740, 578);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormThongKeDoanhThu";
            this.Text = "Thống kê doanh thu";
            this.Load += new System.EventHandler(this.FormThongKeDoanhThu_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDonHang)).EndInit();
            this.panel3.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.DataGridView dgvDonHang;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.TextBox txtDoanhThu;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnBaoCao;
        private System.Windows.Forms.Button btnDong;
        private System.Windows.Forms.DateTimePicker dtNgayDen;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnLoc;
        private System.Windows.Forms.DateTimePicker dtNgayTu;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaDH;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaKhachHang;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayTao;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayGiao;
        private System.Windows.Forms.DataGridViewTextBoxColumn TongTien;
    }
}