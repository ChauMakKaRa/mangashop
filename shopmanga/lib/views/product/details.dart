import 'package:flutter/material.dart';
import 'package:shopmanga/controller/product/cart.dart';
import 'package:shopmanga/controller/product/truyen.dart';

import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveUserInfo(String email, String password) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('email', email);
  await prefs.setString('password', password);
}

Future<String?> getUserInfo() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? savedEmail = prefs.getString('email');
  if (savedEmail != null) {
    return savedEmail;
  }
  return null;
}

class ProductDetailPage extends StatefulWidget {
  final Truyen truyen;
  const ProductDetailPage({Key? key, required this.truyen}) : super(key: key);
  @override
  ProductDetailPageState createState() => ProductDetailPageState();
}

class ProductDetailPageState extends State<ProductDetailPage> {
  bool addedToCart = false;

  late String userEmail;
  ProductDetailPageState() {
    getUserInfo().then((value) {
      if (value != null) {
        userEmail = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    void showSnackBar(BuildContext context) {
      const snackBar = SnackBar(
        content: Text('Đã thêm vào giỏ hàng'),
        duration: Duration(seconds: 2), // Thời gian hiển thị của SnackBar
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết sản phẩm'),
        backgroundColor: const Color.fromARGB(255, 243, 68, 33),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Image.network(
                      widget.truyen.hinhAnh,
                      width: 300,
                      height: 300,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Tác giả: ${widget.truyen.tenTacGia}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Tên truyện: ${widget.truyen.tenTruyen}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Năm sản xuất: ${widget.truyen.year}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Đánh giá: ${widget.truyen.star} sao',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Thể loại: ${widget.truyen.kind}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Cốt truyện: ${widget.truyen.introduce}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  // Các thông tin khác về sản phẩm
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.white, // Màu nền đối với phần này
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Giá: ${widget.truyen.gia}đ',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(
                          255, 224, 94, 7), // Đổi màu nền thành màu đỏ
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Đặt hàng',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(
                          255, 248, 2, 2), // Đổi màu nền thành màu đỏ
                    ),
                  ),
                  onPressed: () {
                    showSnackBar(context);
                    addCart(widget.truyen.id, userEmail, widget.truyen.id,
                        widget.truyen.gia);
                  },
                  child: const Text(
                    'Thêm giỏ hàng',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
