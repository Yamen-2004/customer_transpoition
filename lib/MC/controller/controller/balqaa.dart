import 'package:customer_transpoition/MC/controller/controller/url.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/balqaa.dart';

class balqaaInfoData {
  String baseUrl = url().uri_balqaa;
  Future<List<balqaa>> fetchdata() async {
    final responce = await http.get(Uri.parse(baseUrl));
    if (responce.statusCode == 200) {
      List jsonResponce = jsonDecode(responce.body);
      print(jsonResponce);
      return jsonResponce.map((item) => balqaa.fromJson(item)).toList();
    } else {
      throw Exception("failed to load data");
    }
  }
}
