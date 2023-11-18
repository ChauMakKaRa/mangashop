import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer' as developer;

fetchData() async {
  const String apiKey = 'AIzaSyDarTg-K8zaoWvOfMB0FTKMPYwTVvtNxYY';
  const String apiUrl =
      'https://mangashop-project-default-rtdb.firebaseio.com'; // Thay thế URL API thực tế ở đây

  try {
    final response = await http.get(Uri.parse("$apiUrl?key=$apiKey"));

    if (response.statusCode == 200) {
      // Phân tích phản hồi JSON nếu cần
      final Map<String, dynamic> data = json.decode(response.body);
      developer.log('Data from API: $data');
    } else {
      developer.log('Failed to fetch data from API: ${response.reasonPhrase}');
    }
  } catch (e) {
    developer.log('Error fetching data from API: $e');
  }
}
