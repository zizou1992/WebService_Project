﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34014
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WinTier.ChiTietDonHang_ServiceReference {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ChiTietDonHang", Namespace="http://schemas.datacontract.org/2004/07/WcfServiceLibrary")]
    [System.SerializableAttribute()]
    public partial class ChiTietDonHang : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private double GiaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int IDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int MaDonDatHangField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int MaSanPhamField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int SoLuongField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private double TongCongField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public double Gia {
            get {
                return this.GiaField;
            }
            set {
                if ((this.GiaField.Equals(value) != true)) {
                    this.GiaField = value;
                    this.RaisePropertyChanged("Gia");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int ID {
            get {
                return this.IDField;
            }
            set {
                if ((this.IDField.Equals(value) != true)) {
                    this.IDField = value;
                    this.RaisePropertyChanged("ID");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int MaDonDatHang {
            get {
                return this.MaDonDatHangField;
            }
            set {
                if ((this.MaDonDatHangField.Equals(value) != true)) {
                    this.MaDonDatHangField = value;
                    this.RaisePropertyChanged("MaDonDatHang");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int MaSanPham {
            get {
                return this.MaSanPhamField;
            }
            set {
                if ((this.MaSanPhamField.Equals(value) != true)) {
                    this.MaSanPhamField = value;
                    this.RaisePropertyChanged("MaSanPham");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int SoLuong {
            get {
                return this.SoLuongField;
            }
            set {
                if ((this.SoLuongField.Equals(value) != true)) {
                    this.SoLuongField = value;
                    this.RaisePropertyChanged("SoLuong");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public double TongCong {
            get {
                return this.TongCongField;
            }
            set {
                if ((this.TongCongField.Equals(value) != true)) {
                    this.TongCongField = value;
                    this.RaisePropertyChanged("TongCong");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ChiTietDonHang_ServiceReference.IChiTietDonHangService")]
    public interface IChiTietDonHangService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChiTietDonHangService/GetChiTietDonHangById", ReplyAction="http://tempuri.org/IChiTietDonHangService/GetChiTietDonHangByIdResponse")]
        WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang GetChiTietDonHangById(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChiTietDonHangService/GetChiTietDonHangById", ReplyAction="http://tempuri.org/IChiTietDonHangService/GetChiTietDonHangByIdResponse")]
        System.Threading.Tasks.Task<WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang> GetChiTietDonHangByIdAsync(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChiTietDonHangService/GetAllChiTietDonHang", ReplyAction="http://tempuri.org/IChiTietDonHangService/GetAllChiTietDonHangResponse")]
        WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang[] GetAllChiTietDonHang();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChiTietDonHangService/GetAllChiTietDonHang", ReplyAction="http://tempuri.org/IChiTietDonHangService/GetAllChiTietDonHangResponse")]
        System.Threading.Tasks.Task<WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang[]> GetAllChiTietDonHangAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChiTietDonHangService/InsertChiTietDonHang", ReplyAction="http://tempuri.org/IChiTietDonHangService/InsertChiTietDonHangResponse")]
        void InsertChiTietDonHang(WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang obj);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChiTietDonHangService/InsertChiTietDonHang", ReplyAction="http://tempuri.org/IChiTietDonHangService/InsertChiTietDonHangResponse")]
        System.Threading.Tasks.Task InsertChiTietDonHangAsync(WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang obj);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChiTietDonHangService/UpdateChiTietDonHang", ReplyAction="http://tempuri.org/IChiTietDonHangService/UpdateChiTietDonHangResponse")]
        void UpdateChiTietDonHang(WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang obj);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChiTietDonHangService/UpdateChiTietDonHang", ReplyAction="http://tempuri.org/IChiTietDonHangService/UpdateChiTietDonHangResponse")]
        System.Threading.Tasks.Task UpdateChiTietDonHangAsync(WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang obj);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChiTietDonHangService/DeleteChiTietDonHang", ReplyAction="http://tempuri.org/IChiTietDonHangService/DeleteChiTietDonHangResponse")]
        void DeleteChiTietDonHang(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChiTietDonHangService/DeleteChiTietDonHang", ReplyAction="http://tempuri.org/IChiTietDonHangService/DeleteChiTietDonHangResponse")]
        System.Threading.Tasks.Task DeleteChiTietDonHangAsync(int id);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IChiTietDonHangServiceChannel : WinTier.ChiTietDonHang_ServiceReference.IChiTietDonHangService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ChiTietDonHangServiceClient : System.ServiceModel.ClientBase<WinTier.ChiTietDonHang_ServiceReference.IChiTietDonHangService>, WinTier.ChiTietDonHang_ServiceReference.IChiTietDonHangService {
        
        public ChiTietDonHangServiceClient() {
        }
        
        public ChiTietDonHangServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ChiTietDonHangServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ChiTietDonHangServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ChiTietDonHangServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang GetChiTietDonHangById(int id) {
            return base.Channel.GetChiTietDonHangById(id);
        }
        
        public System.Threading.Tasks.Task<WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang> GetChiTietDonHangByIdAsync(int id) {
            return base.Channel.GetChiTietDonHangByIdAsync(id);
        }
        
        public WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang[] GetAllChiTietDonHang() {
            return base.Channel.GetAllChiTietDonHang();
        }
        
        public System.Threading.Tasks.Task<WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang[]> GetAllChiTietDonHangAsync() {
            return base.Channel.GetAllChiTietDonHangAsync();
        }
        
        public void InsertChiTietDonHang(WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang obj) {
            base.Channel.InsertChiTietDonHang(obj);
        }
        
        public System.Threading.Tasks.Task InsertChiTietDonHangAsync(WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang obj) {
            return base.Channel.InsertChiTietDonHangAsync(obj);
        }
        
        public void UpdateChiTietDonHang(WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang obj) {
            base.Channel.UpdateChiTietDonHang(obj);
        }
        
        public System.Threading.Tasks.Task UpdateChiTietDonHangAsync(WinTier.ChiTietDonHang_ServiceReference.ChiTietDonHang obj) {
            return base.Channel.UpdateChiTietDonHangAsync(obj);
        }
        
        public void DeleteChiTietDonHang(int id) {
            base.Channel.DeleteChiTietDonHang(id);
        }
        
        public System.Threading.Tasks.Task DeleteChiTietDonHangAsync(int id) {
            return base.Channel.DeleteChiTietDonHangAsync(id);
        }
    }
}
