import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model/amman.dart';

class ammanInfoData {
  String baseUrl = "http://192.168.100.90:3000/amman/points";
  Future<List<amman>> fetchdata() async {
    final responce = await http.get(Uri.parse(baseUrl));
    if (responce.statusCode == 200) {
      List jsonResponce = jsonDecode(responce.body);
      print(jsonResponce);
      return jsonResponce.map((item) => amman.fromJson(item)).toList();
    } else {
      throw Exception("failed to load data");
    }
  }
}
