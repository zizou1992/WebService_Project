using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WcfServiceLibrary
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IUserService" in both code and config file together.
    [ServiceContract]
    public interface IUserService
    {
        [OperationContract]
        User GetUserById(int id);
        [OperationContract]
        List<User> GetAllUser();
        [OperationContract]
        void InsertUser(User obj);
        [OperationContract]
        void UpdateUser(User obj);
        [OperationContract]
        void DeleteUser(int id);

    }
    [DataContract]
    public class User
    {
        [DataMember]
        public int UserID { get; set; }
        [DataMember]
        public String TenDangNhap { get; set; }
        [DataMember]
        public String MatKhau { get; set; }
        [DataMember]
        public int QuyentaiKhoan { get; set; }
        [DataMember]
        public String Email { get; set; }
        [DataMember]
        public String SoDT { get; set; }
        [DataMember]
        public String DiaChi { get; set; }
        [DataMember]
        public String CMND { get; set; }
        [DataMember]
        public Boolean DaKichHoat { get; set; }
        [DataMember]
        public String HoTen { get; set; }
        [DataMember]
        public DateTime NgaySinh { get; set; }
    }
}
