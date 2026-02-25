import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/aqaba.dart';
import 'url.dart';


class aqabaInfoData {
  String baseUrl = url().uri_aqaba;
  Future<List<aqaba>> fetchdata() async {
    final responce = await http.get(Uri.parse(baseUrl));
    if (responce.statusCode == 200) {
      List jsonResponce = jsonDecode(responce.body);
      print(jsonResponce);
      return jsonResponce.map((item) => aqaba.fromJson(item)).toList();
    } else {
      throw Exception("failed to load data");
    }
  }
}
