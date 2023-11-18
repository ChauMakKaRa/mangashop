// import 'package:dio/dio.dart';

import 'package:shopmanga/models/users.dart';

class AuthService {
  // Danh sách tài khoản email và mật khẩu
  List<User> danhSachUser = UserProvider().danhSachUsers;
  Future<bool> signIn(String email, String password) async {
    for (var user in danhSachUser) {
      if (email == user.email && password == user.password) {
        return true;
      } else {
        return false; // Đăng nhập không thành công
      }
    }
    return false;
  }
}
