class tafileh {
  String id;
  List<dynamic> point1;
  List<dynamic>  point2;


  tafileh(
      {this.id = "",
      required this.point1,
      required this.point2,
    });

  factory tafileh.fromJson(Map<String, dynamic> json) {
    return  tafileh(
      id: json["_id"],
      point1: json["مجمع الطفيلة الداخلي"], 
      point2: json["مجمع الطفيلة الخارجي"],
    );
  }
}
