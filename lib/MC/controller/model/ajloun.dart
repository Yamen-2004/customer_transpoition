class ajloun {
  String id;
  List<dynamic> point1;



  ajloun(
      {this.id = "",
      required this.point1,

    });

  factory ajloun.fromJson(Map<String, dynamic> json) {
    return  ajloun(
      id: json["_id"],
      point1: json["مجمع عجلون"], 

    );
  }
}
