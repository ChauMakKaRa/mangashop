class AuthService {
  // Danh sách tài khoản email và mật khẩu
  final Map<String, String> userCredentials = {
    'ra@gmail.com': '12345',
    'b2014779@gmail.com': '123456',
  };

  Future<bool> signIn(String email, String password) async {
    // Kiểm tra xem tài khoản và mật khẩu có khớp với bất kỳ tài khoản nào trong danh sách không
    if (userCredentials.containsKey(email) &&
        userCredentials[email] == password) {
      return true; // Đăng nhập thành công
    } else {
      return false; // Đăng nhập không thành công
    }
  }
}
