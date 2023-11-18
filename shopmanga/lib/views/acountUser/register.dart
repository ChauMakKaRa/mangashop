import 'package:flutter/material.dart';
import 'package:shopmanga/views/acountUser/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  bool _obscurePassword = true; // Biến đánh dấu trạng thái ẩn hiện của password

  void togglePasswordVisibility() {
    setState(() {
      _obscurePassword =
          !_obscurePassword; // Đảo ngược trạng thái ẩn hiện của password
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Logo
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Transform.translate(
                  offset: const Offset(0, -10),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
              // Text "Đăng ký tài khoản"
              const Text(
                'Đăng ký tài khoản',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
              // Ô nhập email
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                  ),
                ),
              ),

              // Ô nhập password
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: togglePasswordVisibility,
                    ),
                  ),
                  obscureText:
                      _obscurePassword, // Ẩn hiện password dựa trên trạng thái của _obscurePassword
                ),
              ),
              // Ô xác nhận password
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Xác nhận Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: togglePasswordVisibility,
                    ),
                  ),
                  obscureText:
                      _obscurePassword, // Ẩn hiện password dựa trên trạng thái của _obscurePassword
                ),
              ),
              // Nút Đăng ký
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Xử lý khi nút "Đăng ký" được nhấn
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  minimumSize:
                      MaterialStateProperty.all<Size>(const Size(380, 50)),
                ),
                child: const Text('Đăng ký'),
              ),
              const SizedBox(height: 10),
              Row(
                // Dòng riêng để sắp xếp dòng chữ "Bạn không có tài khoản?" và "Đăng ký ngay"
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Bạn đã có tài khoản? ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text(
                      'Đăng nhập',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
