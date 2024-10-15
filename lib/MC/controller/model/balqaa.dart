class balqaa {
  String id;
  List<dynamic> point1;
  List<dynamic>  point2;
  List<dynamic>  point3;


  balqaa(
      {this.id = "",
      required this.point1,
      required this.point2,
      required this.point3,
    });

  factory balqaa.fromJson(Map<String, dynamic> json) {
    return  balqaa(
      id: json["_id"],
      point1: json["مجمع البقعة"], 
      point2: json["مجمع دير علا"],
      point3: json["مجمع السلط الداخلي"], 
    );
  }
}
