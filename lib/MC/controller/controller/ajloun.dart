import 'package:customer_transpoition/MC/controller/model/ajloun.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'url.dart';

class ajlounInfoData {
  Future<List<ajloun>> fetchdata() async {
    String baseUrl = url().uri_ajloun;
    final responce = await http.get(Uri.parse(baseUrl));
    if (responce.statusCode == 200) {
      List jsonResponce = jsonDecode(responce.body);
      print(jsonResponce);
      return jsonResponce.map((item) => ajloun.fromJson(item)).toList();
    } else {
      throw Exception("failed to load data");
    }
  }
}
