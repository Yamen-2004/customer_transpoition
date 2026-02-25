class amman {
  String id;
  List<dynamic> point1;
  List<dynamic>  point2;
  List<dynamic>  point3;


  amman(
      {this.id = "",
      required this.point1,
      required this.point2,
      required this.point3,
    });

  factory amman.fromJson(Map<String, dynamic> json) {
    return  amman(
      id: json["_id"],
      point1: json["مجمع المحطة"], 
      point2: json["مجمع الشمال"],
      point3: json["مجمع الجنوب الجديد"], 
    );
  }
}
