﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34014
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WinTier.NhaCungCap_ServiceReference {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="NhaCungCap", Namespace="http://schemas.datacontract.org/2004/07/WcfServiceLibrary")]
    [System.SerializableAttribute()]
    public partial class NhaCungCap : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string DiaChiNCCField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string EmailNCCField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int MaNCCField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string SoDTNCCField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string TenNCCField;
        
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
        public string DiaChiNCC {
            get {
                return this.DiaChiNCCField;
            }
            set {
                if ((object.ReferenceEquals(this.DiaChiNCCField, value) != true)) {
                    this.DiaChiNCCField = value;
                    this.RaisePropertyChanged("DiaChiNCC");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string EmailNCC {
            get {
                return this.EmailNCCField;
            }
            set {
                if ((object.ReferenceEquals(this.EmailNCCField, value) != true)) {
                    this.EmailNCCField = value;
                    this.RaisePropertyChanged("EmailNCC");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int MaNCC {
            get {
                return this.MaNCCField;
            }
            set {
                if ((this.MaNCCField.Equals(value) != true)) {
                    this.MaNCCField = value;
                    this.RaisePropertyChanged("MaNCC");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string SoDTNCC {
            get {
                return this.SoDTNCCField;
            }
            set {
                if ((object.ReferenceEquals(this.SoDTNCCField, value) != true)) {
                    this.SoDTNCCField = value;
                    this.RaisePropertyChanged("SoDTNCC");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string TenNCC {
            get {
                return this.TenNCCField;
            }
            set {
                if ((object.ReferenceEquals(this.TenNCCField, value) != true)) {
                    this.TenNCCField = value;
                    this.RaisePropertyChanged("TenNCC");
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
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="NhaCungCap_ServiceReference.INhaCungCapService")]
    public interface INhaCungCapService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/INhaCungCapService/GetNhaCungCapById", ReplyAction="http://tempuri.org/INhaCungCapService/GetNhaCungCapByIdResponse")]
        WinTier.NhaCungCap_ServiceReference.NhaCungCap GetNhaCungCapById(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/INhaCungCapService/GetNhaCungCapById", ReplyAction="http://tempuri.org/INhaCungCapService/GetNhaCungCapByIdResponse")]
        System.Threading.Tasks.Task<WinTier.NhaCungCap_ServiceReference.NhaCungCap> GetNhaCungCapByIdAsync(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/INhaCungCapService/GetAllNhaCungCap", ReplyAction="http://tempuri.org/INhaCungCapService/GetAllNhaCungCapResponse")]
        WinTier.NhaCungCap_ServiceReference.NhaCungCap[] GetAllNhaCungCap();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/INhaCungCapService/GetAllNhaCungCap", ReplyAction="http://tempuri.org/INhaCungCapService/GetAllNhaCungCapResponse")]
        System.Threading.Tasks.Task<WinTier.NhaCungCap_ServiceReference.NhaCungCap[]> GetAllNhaCungCapAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/INhaCungCapService/InsertNhaCungCap", ReplyAction="http://tempuri.org/INhaCungCapService/InsertNhaCungCapResponse")]
        void InsertNhaCungCap(WinTier.NhaCungCap_ServiceReference.NhaCungCap obj);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/INhaCungCapService/InsertNhaCungCap", ReplyAction="http://tempuri.org/INhaCungCapService/InsertNhaCungCapResponse")]
        System.Threading.Tasks.Task InsertNhaCungCapAsync(WinTier.NhaCungCap_ServiceReference.NhaCungCap obj);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/INhaCungCapService/UpdateNhaCungCap", ReplyAction="http://tempuri.org/INhaCungCapService/UpdateNhaCungCapResponse")]
        void UpdateNhaCungCap(WinTier.NhaCungCap_ServiceReference.NhaCungCap obj);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/INhaCungCapService/UpdateNhaCungCap", ReplyAction="http://tempuri.org/INhaCungCapService/UpdateNhaCungCapResponse")]
        System.Threading.Tasks.Task UpdateNhaCungCapAsync(WinTier.NhaCungCap_ServiceReference.NhaCungCap obj);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/INhaCungCapService/DeleteNhaCungCap", ReplyAction="http://tempuri.org/INhaCungCapService/DeleteNhaCungCapResponse")]
        void DeleteNhaCungCap(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/INhaCungCapService/DeleteNhaCungCap", ReplyAction="http://tempuri.org/INhaCungCapService/DeleteNhaCungCapResponse")]
        System.Threading.Tasks.Task DeleteNhaCungCapAsync(int id);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface INhaCungCapServiceChannel : WinTier.NhaCungCap_ServiceReference.INhaCungCapService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class NhaCungCapServiceClient : System.ServiceModel.ClientBase<WinTier.NhaCungCap_ServiceReference.INhaCungCapService>, WinTier.NhaCungCap_ServiceReference.INhaCungCapService {
        
        public NhaCungCapServiceClient() {
        }
        
        public NhaCungCapServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public NhaCungCapServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public NhaCungCapServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public NhaCungCapServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public WinTier.NhaCungCap_ServiceReference.NhaCungCap GetNhaCungCapById(int id) {
            return base.Channel.GetNhaCungCapById(id);
        }
        
        public System.Threading.Tasks.Task<WinTier.NhaCungCap_ServiceReference.NhaCungCap> GetNhaCungCapByIdAsync(int id) {
            return base.Channel.GetNhaCungCapByIdAsync(id);
        }
        
        public WinTier.NhaCungCap_ServiceReference.NhaCungCap[] GetAllNhaCungCap() {
            return base.Channel.GetAllNhaCungCap();
        }
        
        public System.Threading.Tasks.Task<WinTier.NhaCungCap_ServiceReference.NhaCungCap[]> GetAllNhaCungCapAsync() {
            return base.Channel.GetAllNhaCungCapAsync();
        }
        
        public void InsertNhaCungCap(WinTier.NhaCungCap_ServiceReference.NhaCungCap obj) {
            base.Channel.InsertNhaCungCap(obj);
        }
        
        public System.Threading.Tasks.Task InsertNhaCungCapAsync(WinTier.NhaCungCap_ServiceReference.NhaCungCap obj) {
            return base.Channel.InsertNhaCungCapAsync(obj);
        }
        
        public void UpdateNhaCungCap(WinTier.NhaCungCap_ServiceReference.NhaCungCap obj) {
            base.Channel.UpdateNhaCungCap(obj);
        }
        
        public System.Threading.Tasks.Task UpdateNhaCungCapAsync(WinTier.NhaCungCap_ServiceReference.NhaCungCap obj) {
            return base.Channel.UpdateNhaCungCapAsync(obj);
        }
        
        public void DeleteNhaCungCap(int id) {
            base.Channel.DeleteNhaCungCap(id);
        }
        
        public System.Threading.Tasks.Task DeleteNhaCungCapAsync(int id) {
            return base.Channel.DeleteNhaCungCapAsync(id);
        }
    }
}