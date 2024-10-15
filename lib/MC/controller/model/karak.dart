class karak {
  String id;
  List<dynamic> point1;
  List<dynamic>  point2;


  karak(
      {this.id = "",
      required this.point1,
      required this.point2,
    });

  factory karak.fromJson(Map<String, dynamic> json) {
    return  karak(
      id: json["_id"],
      point1: json["مجمع الكرك الداخلي"], 
      point2: json["مجمع الكرك الخارجي"],
    );
  }
}
