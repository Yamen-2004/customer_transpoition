import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model/Irbid.dart';

class IrbidInfoData {
  Future<List<Irbid>> fetchdata() async {
    String baseUrl = "http://192.168.100.90:3000/Irbid/points";
    final responce = await http.get(Uri.parse(baseUrl));
    if (responce.statusCode == 200) {
      
      List jsonResponce = jsonDecode(responce.body);
      return jsonResponce.map((item) => Irbid.fromJson(item)).toList();
    } else {
      throw Exception("failed to load data");
    }
  }
}
