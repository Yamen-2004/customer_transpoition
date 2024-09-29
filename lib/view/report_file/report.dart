import 'package:flutter/material.dart';
import '../../MC/controller/reportController.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final _formKey = GlobalKey<FormState>();
  final _messageController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  reportController _reportController = reportController();

  void _saveReport() {
    if (_formKey.currentState!.validate()) {
      // Perform the API call to post the report data to the server
      // You can implement your API logic here
      String message = _messageController.text;
      String phoneNumber = _phoneNumberController.text;

      // Print the report data for demonstration purposes
      _reportController.addReport(message, phoneNumber);
    }
  }

  @override
  void dispose() {
    _messageController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('الإبلاغ عن مشكلة '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              TextFormField(
                enableSuggestions: true,
                textAlign: TextAlign.end,
                textDirection: TextDirection.ltr,
                controller: _messageController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hoverColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  labelText: 'ماهي المشكلة ؟',
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'الرجاء إدخال نص للمشكلة';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hoverColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  labelText: "رقم الهاتف",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty &&
                      value.length != 10 &&
                      value.contains("078") &&
                      value.contains("079") &&
                      value.contains("077")) {
                    return 'الرجاء إدخال رقم هاتف صحيح';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: const Color.fromARGB(255, 88, 49, 35),
                    elevation: 20,
                    primary: Color(0xff799C90),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  onPressed: _saveReport,
                  child: const Text('إرسال',
                      style: TextStyle(
                        fontSize: 20.0,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
