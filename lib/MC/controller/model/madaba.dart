class madaba {
  String id;
  List<dynamic> point1;
  List<dynamic>  point2;


  madaba(
      {this.id = "",
      required this.point1,
      required this.point2,
    });

  factory madaba.fromJson(Map<String, dynamic> json) {
    return  madaba(
      id: json["_id"],
      point1: json["مجمع مادبا الجنوبي"], 
      point2: json["مجمع مادبا الشمالي"],
    );
  }
}
