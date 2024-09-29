class Irbid {
  String id;
  List<dynamic> point1;
  List<dynamic>  point2;
  List<dynamic>  point3;
  List<dynamic>  point4;
  List<dynamic>  point5;

  Irbid(
      {this.id = "",
      required this.point1,
      required this.point2,
      required this.point3,
      required this.point4,
      required this.point5});

  factory Irbid.fromJson(Map<String, dynamic> json) {
    return  Irbid(
      id: json["_id"],
      point1: json["مجمع الغور"], 
      point2: json["مجمع الشمالي"],
      point5:  json["مجمع الشيخ خليل"],
      point3: json["مجمع الغور القديم"], 
      point4: json["مجمع عمان"],
    );
  }
}
