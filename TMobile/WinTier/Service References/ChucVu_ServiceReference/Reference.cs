﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34014
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WinTier.ChucVu_ServiceReference {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ChucVu", Namespace="http://schemas.datacontract.org/2004/07/WcfServiceLibrary")]
    [System.SerializableAttribute()]
    public partial class ChucVu : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int MaChucVuField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string MoTaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string TenChucVuField;
        
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
        public int MaChucVu {
            get {
                return this.MaChucVuField;
            }
            set {
                if ((this.MaChucVuField.Equals(value) != true)) {
                    this.MaChucVuField = value;
                    this.RaisePropertyChanged("MaChucVu");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string MoTa {
            get {
                return this.MoTaField;
            }
            set {
                if ((object.ReferenceEquals(this.MoTaField, value) != true)) {
                    this.MoTaField = value;
                    this.RaisePropertyChanged("MoTa");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string TenChucVu {
            get {
                return this.TenChucVuField;
            }
            set {
                if ((object.ReferenceEquals(this.TenChucVuField, value) != true)) {
                    this.TenChucVuField = value;
                    this.RaisePropertyChanged("TenChucVu");
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
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ChucVu_ServiceReference.IChucVuService")]
    public interface IChucVuService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChucVuService/GetChucVuById", ReplyAction="http://tempuri.org/IChucVuService/GetChucVuByIdResponse")]
        WinTier.ChucVu_ServiceReference.ChucVu GetChucVuById(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChucVuService/GetChucVuById", ReplyAction="http://tempuri.org/IChucVuService/GetChucVuByIdResponse")]
        System.Threading.Tasks.Task<WinTier.ChucVu_ServiceReference.ChucVu> GetChucVuByIdAsync(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChucVuService/GetAllChucVu", ReplyAction="http://tempuri.org/IChucVuService/GetAllChucVuResponse")]
        WinTier.ChucVu_ServiceReference.ChucVu[] GetAllChucVu();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChucVuService/GetAllChucVu", ReplyAction="http://tempuri.org/IChucVuService/GetAllChucVuResponse")]
        System.Threading.Tasks.Task<WinTier.ChucVu_ServiceReference.ChucVu[]> GetAllChucVuAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChucVuService/InsertChucVu", ReplyAction="http://tempuri.org/IChucVuService/InsertChucVuResponse")]
        void InsertChucVu(WinTier.ChucVu_ServiceReference.ChucVu obj);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChucVuService/InsertChucVu", ReplyAction="http://tempuri.org/IChucVuService/InsertChucVuResponse")]
        System.Threading.Tasks.Task InsertChucVuAsync(WinTier.ChucVu_ServiceReference.ChucVu obj);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChucVuService/UpdateChucVu", ReplyAction="http://tempuri.org/IChucVuService/UpdateChucVuResponse")]
        void UpdateChucVu(WinTier.ChucVu_ServiceReference.ChucVu obj);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChucVuService/UpdateChucVu", ReplyAction="http://tempuri.org/IChucVuService/UpdateChucVuResponse")]
        System.Threading.Tasks.Task UpdateChucVuAsync(WinTier.ChucVu_ServiceReference.ChucVu obj);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChucVuService/DeleteChucVu", ReplyAction="http://tempuri.org/IChucVuService/DeleteChucVuResponse")]
        void DeleteChucVu(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChucVuService/DeleteChucVu", ReplyAction="http://tempuri.org/IChucVuService/DeleteChucVuResponse")]
        System.Threading.Tasks.Task DeleteChucVuAsync(int id);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IChucVuServiceChannel : WinTier.ChucVu_ServiceReference.IChucVuService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ChucVuServiceClient : System.ServiceModel.ClientBase<WinTier.ChucVu_ServiceReference.IChucVuService>, WinTier.ChucVu_ServiceReference.IChucVuService {
        
        public ChucVuServiceClient() {
        }
        
        public ChucVuServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ChucVuServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ChucVuServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ChucVuServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public WinTier.ChucVu_ServiceReference.ChucVu GetChucVuById(int id) {
            return base.Channel.GetChucVuById(id);
        }
        
        public System.Threading.Tasks.Task<WinTier.ChucVu_ServiceReference.ChucVu> GetChucVuByIdAsync(int id) {
            return base.Channel.GetChucVuByIdAsync(id);
        }
        
        public WinTier.ChucVu_ServiceReference.ChucVu[] GetAllChucVu() {
            return base.Channel.GetAllChucVu();
        }
        
        public System.Threading.Tasks.Task<WinTier.ChucVu_ServiceReference.ChucVu[]> GetAllChucVuAsync() {
            return base.Channel.GetAllChucVuAsync();
        }
        
        public void InsertChucVu(WinTier.ChucVu_ServiceReference.ChucVu obj) {
            base.Channel.InsertChucVu(obj);
        }
        
        public System.Threading.Tasks.Task InsertChucVuAsync(WinTier.ChucVu_ServiceReference.ChucVu obj) {
            return base.Channel.InsertChucVuAsync(obj);
        }
        
        public void UpdateChucVu(WinTier.ChucVu_ServiceReference.ChucVu obj) {
            base.Channel.UpdateChucVu(obj);
        }
        
        public System.Threading.Tasks.Task UpdateChucVuAsync(WinTier.ChucVu_ServiceReference.ChucVu obj) {
            return base.Channel.UpdateChucVuAsync(obj);
        }
        
        public void DeleteChucVu(int id) {
            base.Channel.DeleteChucVu(id);
        }
        
        public System.Threading.Tasks.Task DeleteChucVuAsync(int id) {
            return base.Channel.DeleteChucVuAsync(id);
        }
    }
}