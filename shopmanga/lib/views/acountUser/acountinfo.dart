import 'package:flutter/material.dart';

class AccountInfoPage extends StatelessWidget {
  String email;
  AccountInfoPage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin tài khoản'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Stack(
                children: <Widget>[
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/564x/40/98/2a/40982a8167f0a53dedce3731178f2ef5.jpg'), // Thay đổi URL_ảnh_đại_diện bằng URL ảnh đại diện của người dùng
                    radius: 50,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        // Xử lý khi người dùng nhấn chỉnh sửa ảnh đại diện
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(Icons.person),
                const SizedBox(width: 10),
                const Text(
                  'Họ và tên: Kara', // Thay đổi thành thông tin tên người dùng
                  style: TextStyle(fontSize: 18),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    // Xử lý khi người dùng nhấn chỉnh sửa thông tin
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.email),
                const SizedBox(width: 10),
                Text(
                  'Email: ${email}', // Thay đổi thành email người dùng
                  style: const TextStyle(fontSize: 18),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    // Xử lý khi người dùng nhấn chỉnh sửa thông tin
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('Địa chỉ đặt hàng'),
              onTap: () {
                // Xử lý khi người dùng nhấn vào địa chỉ đặt hàng
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Đơn hàng đã đặt'),
              onTap: () {
                // Xử lý khi người dùng nhấn vào danh sách đơn hàng đã đặt
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Liên hệ'),
              onTap: () {
                // Xử lý khi người dùng nhấn vào liên hệ
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('Lịch sử đặt hàng'),
              onTap: () {
                // Xử lý khi người dùng nhấn vào lịch sử đặt hàng
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Thiết lập tài khoản'),
              onTap: () {
                // Xử lý khi người dùng nhấn vào thiết lập tài khoản
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Trung tâm trợ giúp'),
              onTap: () {
                // Xử lý khi người dùng nhấn vào trung tâm trợ giúp
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Cài đặt'),
              onTap: () {
                // Xử lý khi người dùng nhấn vào cài đặt
              },
            ),
          ],
        ),
      ),
    );
  }
}
