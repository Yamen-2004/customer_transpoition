
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model/reportModel.dart';
class reportController{

  Future<List<report>> addReport( String reportMessage, String phone) async {
  String baseUrl = "http://192.168.100.90:3000/report";
  final requestBody = jsonEncode({
    "reportMessage": reportMessage,
    "phone": phone
  });
  
  final response = await http.post(Uri.parse(baseUrl),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: requestBody);
 

  
 
  
  // Add a return statement here
  return [];
}

}
