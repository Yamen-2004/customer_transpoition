class report {
  String id;
  String reportMessage;
  String phone;

  report({ this.id ="", required this.reportMessage, required this.phone});


Map<String, dynamic> tojson() {
    return {
      '_id': id,
      'reportMessage': reportMessage,
      'phone': phone,
    };
  }
}
