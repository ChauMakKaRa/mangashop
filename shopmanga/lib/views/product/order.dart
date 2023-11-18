import 'package:flutter/material.dart';
import 'package:shopmanga/models/carts.dart';

class OrderDetailPage extends StatelessWidget {
  final List<Cart> carts;
  double tong = 0;
  OrderDetailPage({Key? key, required this.carts});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết đơn hàng'),
        backgroundColor: const Color.fromARGB(
            255, 243, 47, 33), // Thay đổi màu nền thanh tiêu đề
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: carts.map((cartItem) {
            tong = tong + cartItem.total;
            return ListTile(
              title: Text(
                'Mã sản phẩm: ${cartItem.idproduct}',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              subtitle: Text(
                'số lượng: ${cartItem.idproduct} ',
                style: const TextStyle(fontSize: 16, color: Colors.green),
              ),
              trailing: Column(
                // Sử dụng Column để hiển thị nhiều dòng trong phần trailing
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Giá: ${cartItem.total} đồng',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              tileColor: Colors.grey.shade200, // Màu nền của mỗi ListTile
            );
          }).toList(),
        ),
      ),
      backgroundColor: Colors.grey.shade200, // Thay đổi màu nền của trang
    );
  }
}
