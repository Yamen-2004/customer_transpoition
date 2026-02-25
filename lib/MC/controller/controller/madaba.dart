import 'package:customer_transpoition/MC/controller/controller/url.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/madaba.dart';

class madabaInfoData {
  String baseUrl = url().uri_madaba;
  Future<List<madaba>> fetchdata() async {
    final responce = await http.get(Uri.parse(baseUrl));
    if (responce.statusCode == 200) {
      List jsonResponce = jsonDecode(responce.body);
      print(jsonResponce);
      return jsonResponce.map((item) => madaba.fromJson(item)).toList();
    } else {
      throw Exception("failed to load data");
    }
  }
}
