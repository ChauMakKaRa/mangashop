import 'package:flutter/material.dart';

class Truyen {
  int id;
  String tenTruyen;
  String tenTacGia;
  double gia;
  int soLuong;
  String hinhAnh;
  int year;
  int star;
  String kind;
  String introduce;

  Truyen({
    required this.id,
    required this.tenTruyen,
    required this.tenTacGia,
    required this.gia,
    required this.soLuong,
    required this.hinhAnh,
    required this.year,
    required this.star,
    required this.kind,
    required this.introduce,
  });
}

class TruyenProvider extends ChangeNotifier {
  // Khai báo danh sách truyện
  List<Truyen> danhSachTruyen = [
    Truyen(
      id: 1,
      tenTruyen: 'One Punch Man',
      tenTacGia: 'Kara',
      gia: 30000,
      soLuong: 2,
      hinhAnh:
          'https://i.pinimg.com/564x/7d/f8/25/7df825ab18cb8e318ccd2c4943461976.jpg',
      year: 2019,
      star: 5,
      kind: 'truyện bộ',
      introduce:
          'One-Punch Man là một manga dài tập của Nhật Bản, được viết cốt truyện bởi One và được vẽ bởi Yusuke Murata. Tác giả đã xuất bản One-Punch Man như là một webcomic trong năm 2009. Đến tháng 12/2016, One-Punch Man đã có đến 302 chương truyện. Khi seri đã nổi tiếng và nhận được 7.9 triệu lần xem trong tháng 6/2012, Yusuke Murata liên hệ đến One để vẽ thêm một spin-off cho các ấn phẩm kỹ thuật số trong tạp chí Weekly Young Jump, Young Jump Web Comics trên website, được xuất bản bởi nhà xuất bản Shueisha. Chương đầu tiên được công bố vào ngày 14 tháng 6 năm 2012.',
    ),

    Truyen(
        id: 2,
        tenTruyen: 'Supper Dragon Ball',
        tenTacGia: 'Kara',
        gia: 300.00,
        soLuong: 2,
        hinhAnh:
            'https://i.pinimg.com/564x/bd/a1/11/bda1119f62299d1085967269428af2af.jpg',
        year: 2019,
        star: 5,
        introduce:
            'One-Punch Man là một manga dài tập của Nhật Bản, được viết cốt truyện bởi One và được vẽ bởi Yusuke Murata. Tác giả đã xuất bản One-Punch Man như là một webcomic trong năm 2009. Đến tháng 12/2016, One-Punch Man đã có đến 302 chương truyện. Khi seri đã nổi tiếng và nhận được 7.9 triệu lần xem trong tháng 6/2012, Yusuke Murata liên hệ đến One để vẽ thêm một spin-off cho các ấn phẩm kỹ thuật số trong tạp chí Weekly Young Jump, Young Jump Web Comics trên website, được xuất bản bởi nhà xuất bản Shueisha. Chương đầu tiên được công bố vào ngày 14 tháng 6 năm 2012.',
        kind: 'truyện bộ'),
    Truyen(
        id: 3,
        tenTruyen: 'Onpiece',
        tenTacGia: 'Kara',
        gia: 30000,
        soLuong: 2,
        hinhAnh:
            'https://i.pinimg.com/564x/2b/13/a9/2b13a918b43ab4db318ac74edf1dac19.jpg',
        year: 2019,
        star: 5,
        introduce:
            'One-Punch Man là một manga dài tập của Nhật Bản, được viết cốt truyện bởi One và được vẽ bởi Yusuke Murata. Tác giả đã xuất bản One-Punch Man như là một webcomic trong năm 2009. Đến tháng 12/2016, One-Punch Man đã có đến 302 chương truyện. Khi seri đã nổi tiếng và nhận được 7.9 triệu lần xem trong tháng 6/2012, Yusuke Murata liên hệ đến One để vẽ thêm một spin-off cho các ấn phẩm kỹ thuật số trong tạp chí Weekly Young Jump, Young Jump Web Comics trên website, được xuất bản bởi nhà xuất bản Shueisha. Chương đầu tiên được công bố vào ngày 14 tháng 6 năm 2012.',
        kind: 'truyện bộ'),
    Truyen(
        id: 4,
        tenTruyen: 'Shadow Garden',
        tenTacGia: 'Kara',
        gia: 30000,
        soLuong: 2,
        hinhAnh:
            'https://i.pinimg.com/564x/76/14/2d/76142d7b30041ca4e30e21b93cc444d4.jpg',
        year: 2019,
        star: 5,
        introduce:
            'One-Punch Man là một manga dài tập của Nhật Bản, được viết cốt truyện bởi One và được vẽ bởi Yusuke Murata. Tác giả đã xuất bản One-Punch Man như là một webcomic trong năm 2009. Đến tháng 12/2016, One-Punch Man đã có đến 302 chương truyện. Khi seri đã nổi tiếng và nhận được 7.9 triệu lần xem trong tháng 6/2012, Yusuke Murata liên hệ đến One để vẽ thêm một spin-off cho các ấn phẩm kỹ thuật số trong tạp chí Weekly Young Jump, Young Jump Web Comics trên website, được xuất bản bởi nhà xuất bản Shueisha. Chương đầu tiên được công bố vào ngày 14 tháng 6 năm 2012.',
        kind: 'truyện bộ'),
    // Thêm các cuốn truyện khác vào danh sách nếu có
  ];

  // Phương thức để truy cập danh sách truyện
  List getDanhSachTruyen() {
    return danhSachTruyen;
  }
}
