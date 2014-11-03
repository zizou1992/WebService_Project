using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WcfServiceLibrary
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "UserService" in both code and config file together.
    public class UserService : IUserService
    {
        TMobileDBEntities context = new TMobileDBEntities();
        public User GetUserById(int id) {
            
            var userEntity = (from u in context.User
                        where u.UserID == id
                        select u
                          ).FirstOrDefault();
            if (userEntity != null)
                return TranslateUserEntityToUser(userEntity);
            else
                throw new Exception("Không tìm thấy ID");
        }
        public List<User> GetAllUser() {
            var userEntity = (from u in context.User
                              select u);
            List < User > list = userEntity.ToList().ConvertAll(new Converter<UserEntity, User>(TranslateUserEntityToUser));
            if (userEntity != null)
                return list;//TranslateUserEntityToUser(userEntity);
            else
                throw new Exception("Không có User");
        }
        public void InsertUser(User obj) {
            UserEntity userEntity = TranslateUserToUserEntity(obj);
            context.User.Add(userEntity);
            context.SaveChanges();
        }
        public void UpdateUser(User obj) {
            UserEntity userEntity = (from u
                                         in context.User
                                     where u.UserID == obj.UserID
                                     select u).First();
            userEntity.UserID = obj.UserID;
            userEntity.HoTen = obj.HoTen;
            userEntity.CMND = obj.CMND;
            //user.DaKichHoat = (Boolean)userEntity.DaKichHoat;
            userEntity.DiaChi = obj.DiaChi;
            userEntity.Email = obj.Email;
            userEntity.MatKhau = obj.MatKhau;
            userEntity.NgaySinh = (DateTime)obj.NgaySinh;
            //user.QuyentaiKhoan = userEntity.QuyentaiKhoan;
            userEntity.SoDT = obj.SoDT;
            userEntity.TenDangNhap = obj.TenDangNhap;
            context.SaveChanges();
        }
        public void DeleteUser(int id) {
            UserEntity userEntity = (from u
                                         in context.User
                                     where u.UserID == id
                                     select u).First();
            context.User.Remove(userEntity);
            context.SaveChanges();
        }
        private static User TranslateUserEntityToUser(UserEntity userEntity) {
           // List<User> list=new List<User>();
            User user = new User();           
            user.UserID = userEntity.UserID;
            user.HoTen = userEntity.HoTen;
            user.CMND = userEntity.CMND;
            //user.DaKichHoat = (Boolean)userEntity.DaKichHoat;
            user.DiaChi = userEntity.DiaChi;
            user.Email = userEntity.Email;
            user.MatKhau = userEntity.MatKhau;
            //user.NgaySinh = (DateTime)userEntity.NgaySinh;
            //user.QuyentaiKhoan = userEntity.QuyentaiKhoan;
            user.SoDT = userEntity.SoDT;
            user.TenDangNhap = userEntity.TenDangNhap;
           // list.Add(user);
            return user;
        }
        private static UserEntity TranslateUserToUserEntity(User obj)
        {
            // List<User> list=new List<User>();
            UserEntity user = new UserEntity();
            user.UserID = obj.UserID;
            user.HoTen = obj.HoTen;
            user.CMND = obj.CMND;
            //user.DaKichHoat = (Boolean)userEntity.DaKichHoat;
            user.DiaChi = obj.DiaChi;
            user.Email = obj.Email;
            user.MatKhau = obj.MatKhau;
            user.NgaySinh = (DateTime)obj.NgaySinh;
            //user.QuyentaiKhoan = userEntity.QuyentaiKhoan;
            user.SoDT = obj.SoDT;
            user.TenDangNhap = obj.TenDangNhap;
            // list.Add(user);
            return user;
        }
    }
}
