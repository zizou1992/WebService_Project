namespace WinTier
{
    partial class FormDanhMucPhieuNhap
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
            this.dgvDMPN = new System.Windows.Forms.DataGridView();
            this.MaPN = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NhaCC = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgayNhap = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TongTien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btnXuatBaoCao = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDMPN)).BeginInit();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.dgvDMPN);
            this.panel1.Location = new System.Drawing.Point(13, 12);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(690, 410);
            this.panel1.TabIndex = 0;
            // 
            // dgvDMPN
            // 
            this.dgvDMPN.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDMPN.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaPN,
            this.NhaCC,
            this.NgayNhap,
            this.TongTien});
            this.dgvDMPN.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvDMPN.Location = new System.Drawing.Point(0, 0);
            this.dgvDMPN.Name = "dgvDMPN";
            this.dgvDMPN.Size = new System.Drawing.Size(690, 410);
            this.dgvDMPN.TabIndex = 0;
            // 
            // MaPN
            // 
            this.MaPN.DataPropertyName = "MaPhieuNhap";
            this.MaPN.HeaderText = "Mã phiếu nhập";
            this.MaPN.Name = "MaPN";
            this.MaPN.ReadOnly = true;
            this.MaPN.Width = 150;
            // 
            // NhaCC
            // 
            this.NhaCC.DataPropertyName = "TenNCC";
            this.NhaCC.HeaderText = "Nhà cung cấp";
            this.NhaCC.Name = "NhaCC";
            this.NhaCC.ReadOnly = true;
            this.NhaCC.Width = 150;
            // 
            // NgayNhap
            // 
            this.NgayNhap.DataPropertyName = "NgayNhap";
            this.NgayNhap.HeaderText = "Ngày nhập";
            this.NgayNhap.Name = "NgayNhap";
            this.NgayNhap.ReadOnly = true;
            this.NgayNhap.Width = 200;
            // 
            // TongTien
            // 
            this.TongTien.DataPropertyName = "TongTienNhap";
            this.TongTien.HeaderText = "Tổng tiền";
            this.TongTien.Name = "TongTien";
            this.TongTien.ReadOnly = true;
            this.TongTien.Width = 120;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.btnXuatBaoCao);
            this.panel2.Controls.Add(this.button2);
            this.panel2.Controls.Add(this.button1);
            this.panel2.Location = new System.Drawing.Point(13, 428);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(690, 48);
            this.panel2.TabIndex = 1;
            // 
            // btnXuatBaoCao
            // 
            this.btnXuatBaoCao.Location = new System.Drawing.Point(332, 3);
            this.btnXuatBaoCao.Name = "btnXuatBaoCao";
            this.btnXuatBaoCao.Size = new System.Drawing.Size(134, 34);
            this.btnXuatBaoCao.TabIndex = 2;
            this.btnXuatBaoCao.Text = "Xuất báo cáo";
            this.btnXuatBaoCao.UseVisualStyleBackColor = true;
            this.btnXuatBaoCao.Click += new System.EventHandler(this.btnXuatBaoCao_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(612, 3);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 34);
            this.button2.TabIndex = 1;
            this.button2.Text = "Đóng";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(472, 3);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(134, 34);
            this.button1.TabIndex = 0;
            this.button1.Text = "Lập phiếu nhập kho";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // FormDanhMucPhieuNhap
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(715, 488);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Tahoma", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "FormDanhMucPhieuNhap";
            this.Text = "Danh mục phiếu nhập kho";
            this.Load += new System.EventHandler(this.FormDanhMucPhieuNhap_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDMPN)).EndInit();
            this.panel2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView dgvDMPN;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaPN;
        private System.Windows.Forms.DataGridViewTextBoxColumn NhaCC;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayNhap;
        private System.Windows.Forms.DataGridViewTextBoxColumn TongTien;
        private System.Windows.Forms.Button btnXuatBaoCao;
    }
}