import 'package:flutter/material.dart';

class User {
  final int id;
  final String username;
  final String email;
  final String password;
  final String address;
  final String phone;
  final String avatar;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.address,
    required this.phone,
    required this.avatar,
  });
}

class UserProvider extends ChangeNotifier {
  // Khai báo danh sách truyện
  List<User> danhSachUser = [
    User(
      id: 1,
      username: 'kara',
      email: 'ra@gmail.com',
      password: '12345',
      address: 'tri tôn, an giang ',
      avatar:
          'https://i.pinimg.com/564x/7d/f8/25/7df825ab18cb8e318ccd2c4943461976.jpg',
      phone: '0522679189',
    ),

    User(
      id: 1,
      username: 'admin',
      email: 'admin@gmail.com',
      password: 'admin',
      address: 'tri tôn, an giang ',
      avatar:
          'https://i.pinimg.com/564x/7d/f8/25/7df825ab18cb8e318ccd2c4943461976.jpg',
      phone: '0522679189',
    ),
    User(
      id: 1,
      username: 'shipper',
      email: 'shipper@gmail.com',
      password: '12345',
      address: 'tri tôn, an giang ',
      avatar:
          'https://i.pinimg.com/564x/7d/f8/25/7df825ab18cb8e318ccd2c4943461976.jpg',
      phone: '0522679189',
    ),

    // Thêm các cuốn truyện khác vào danh sách nếu có
  ];

  // Phương thức để truy cập danh sách truyện
  List getDanhSachUser() {
    return danhSachUser;
  }
}
