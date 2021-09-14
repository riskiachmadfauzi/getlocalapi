import 'dart:convert';

import 'package:http/http.dart' as http;
import 'model.dart';

class Repository {
  final _baseUrl = 'http://192.168.0.19/api/crud/data.php';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Blog> blog = it.map((e) => Blog.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
