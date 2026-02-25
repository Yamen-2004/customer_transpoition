import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/amman.dart';
import 'url.dart';


class ammanInfoData {
  String baseUrl = url().uri_amman;
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
