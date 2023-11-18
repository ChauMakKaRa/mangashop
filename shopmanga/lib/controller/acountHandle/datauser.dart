import 'package:shared_preferences/shared_preferences.dart';

readData() async {
  final prefs = await SharedPreferences.getInstance();
  final myString =
      prefs.getString('email'); // Thay 'key' bằng khóa của dữ liệu cần lấy
  if (myString != null) {
    // Xử lý dữ liệu đã lấy được
    print('Dữ liệu đã lấy được: $myString');
  } else {
    // Xử lý trong trường hợp không tìm thấy dữ liệu
    print('Không tìm thấy dữ liệu');
  }
}
