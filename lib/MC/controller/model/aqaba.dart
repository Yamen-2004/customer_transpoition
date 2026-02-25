class aqaba {
  String id;
  List<dynamic> point1;



  aqaba(
      {this.id = "",
      required this.point1,
    
    });

  factory aqaba.fromJson(Map<String, dynamic> json) {
    return  aqaba(
      id: json["_id"],
      point1: json["مجمع سفريات العقبة"], 
   
    );
  }
}
