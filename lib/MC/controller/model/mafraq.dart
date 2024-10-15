class mafraq {
  String id;
  List<dynamic> point1;
  List<dynamic>  point2;


  mafraq(
      {this.id = "",
      required this.point1,
      required this.point2,
    });

  factory mafraq.fromJson(Map<String, dynamic> json) {
    return  mafraq(
      id: json["_id"],
      point1: json["مجمع المفرق الشرقي"], 
      point2: json["مجمع المفرق الغربي"],

    );
  }
}
