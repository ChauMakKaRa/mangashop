import 'package:flutter/material.dart';
import 'package:shopmanga/models/carts.dart';
import 'package:shopmanga/views/product/order.dart';
import '../../controller/product/cart.dart';

class ShoppingCartPage extends StatelessWidget {
  List<Cart> cart = carts; // Trường để lưu trữ danh sách cart
  double tong = 0;
  ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 47, 33),
        title: const Text('Giỏ hàng'),
      ),
      body: ListView(
        children: carts.map((cartItem) {
          tong = tong + cartItem.total;
          return ListTile(
            title: Text(
              'Mã sản phẩm: ${cartItem.idproduct}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            subtitle: Text(
              'Giá: ${cartItem.total} đồng',
              style: const TextStyle(color: Colors.green),
            ),
            trailing: const Text(
              'Số lượng: 1',
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.purple),
            ),
            tileColor: Colors.grey.shade200, // Màu nền của mỗi ListTile
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Tổng cộng: ${tong} đồng', // Thay đổi số liệu tương ứng với tổng cộng giá trị giỏ hàng
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderDetailPage(carts: cart)),
                  );
                },
                child: const Text('Thanh toán'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
