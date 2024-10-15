import 'package:customer_transpoition/MC/controller/controller/url.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/maan.dart';

class maanInfoData {
  String baseUrl = url().uri_maan;
  Future<List<maan>> fetchdata() async {
    final responce = await http.get(Uri.parse(baseUrl));
    if (responce.statusCode == 200) {
      List jsonResponce = jsonDecode(responce.body);
      print(jsonResponce);
      return jsonResponce.map((item) => maan.fromJson(item)).toList();
    } else {
      throw Exception("failed to load data");
    }
  }
}
