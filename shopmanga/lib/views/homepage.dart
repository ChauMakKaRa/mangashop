import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shopmanga/views/acountUser/acountinfo.dart';
import 'package:shopmanga/views/product/carts.dart';
import 'package:shopmanga/views/product/details.dart';
import '../controller/product/truyen.dart';
// import '../models/truyen.dart';
import '../views/acountUser/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late String userEmail;
  HomePageState() {
    getUserInfo().then((value) {
      if (value != null) {
        userEmail = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Truyen> danhSachTruyen = TruyenProvider().danhSachTruyen;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 47, 33),
        title: const Text('Trang chủ'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Xử lý khi nút đăng xuất đượcấn
              // Ví dụ: Thực hiện đăng xuất và chuyển người dùng đến trang đăng nhập
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 33, 173),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Giỏ hàng'),
              leading: const Icon(Icons.shopping_cart),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingCartPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tài khoản'),
              leading: const Icon(Icons.person),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AccountInfoPage(email: userEmail)),
                );
                // Xử lý khi mục menu 2 được chọn
              },
            ),
            ListTile(
              title: const Text('Đăng xuất'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
            // Thêm các mục menu khác nếu cần
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16), // Khoảng cách phần từ viền
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontFamily:
                        'YourFontFamily', // Thay thế bằng font family bạn muốn sử dụng
                    fontSize: 34, // Kích thước font chữ
                    color: Colors.black, // Màu chữ chung
                    fontWeight: FontWeight.bold, // Chế độ in đậm
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'KARA\'S ',
                      style: TextStyle(
                        color: Color.fromARGB(
                            255, 243, 68, 33), // Màu chữ cho "KARA'S"
                      ),
                    ),
                    TextSpan(
                      text: 'SHOP',
                      style: TextStyle(
                        color: Colors.black, // Màu chữ cho "SHOP"
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Phần header
            SizedBox(
              height: 200,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true, // Bật chế độ tự động lướt
                  enlargeCenterPage: true, // Phóng to trang trung tâm
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 300),
                  enableInfiniteScroll: true, // Cho phép lướt vô hạn
                  pauseAutoPlayOnTouch: true,
                ),
                items: [
                  // Hiển thị 5 hình ảnh sản phẩm
                  Image.network(
                      'https://i.pinimg.com/736x/94/6c/d1/946cd191af9cd506c48b6acd8c0bb4ca.jpg'),
                  Image.network(
                      'https://i.pinimg.com/736x/67/a1/b0/67a1b01f920b1dc1205b10a86e6a95e6.jpg'),
                  Image.network(
                      'https://i.pinimg.com/564x/4b/3c/d4/4b3cd434c1c689ae5f70a58d2a8cb30c.jpg'),
                  Image.network(
                      'https://i.pinimg.com/564x/5a/1d/9c/5a1d9c133c9948c29a27d85ffadc5e82.jpg'),
                  Image.network(
                      'https://i.pinimg.com/564x/81/5e/1f/815e1fa22e1a9869ce037c22e565e1ed.jpg'),
                ],
              ),
            ),
            const Text(
              'Giới thiệu', // Tiêu đề "Danh sách truyện"
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Row(
              children: [
                Text(
                  'Danh sách truyện',
                  style: TextStyle(
                    fontSize: 34, // Kích thước lớn hơn
                    fontWeight: FontWeight.bold, // In đậm
                  ),
                )
              ],
            ),

            Column(
              children: danhSachTruyen
                  .map((listTruyen) => Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProductDetailPage(truyen: listTruyen)),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.network(
                                listTruyen.hinhAnh,
                                width: 120,
                                height: 120,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tác giả: ${listTruyen.tenTacGia}",
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight
                                          .bold // Kích thước văn bản 16
                                      ),
                                ),
                                Text(
                                  'Truyện: ${listTruyen.tenTruyen}',
                                  style: const TextStyle(
                                    fontSize: 20, // Kích thước văn bản 16
                                  ),
                                ),
                                Text(
                                  'Giá: ${listTruyen.gia}',
                                  style: const TextStyle(
                                    fontSize: 20, // Kích thước văn bản 16
                                  ),
                                ),
                                const Text(''),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(Colors
                                            .red), // Đổi màu nền thành màu đỏ
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ProductDetailPage(
                                                  truyen: listTruyen)),
                                    );
                                    // Xử lý khi nút Mua được nhấn
                                  },
                                  child: const Text(
                                    'Mua hàng',
                                    style: TextStyle(
                                      fontSize: 20, // Kích thước văn bản 16
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
