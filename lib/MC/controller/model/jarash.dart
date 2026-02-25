class jarash {
  String id;
  List<dynamic> point1;



  jarash(
      {this.id = "",
      required this.point1,
     
    });

  factory jarash.fromJson(Map<String, dynamic> json) {
    return  jarash(
      id: json["_id"],
      point1: json["مجمع جرش الجديد"], 
      
    );
  }
}
