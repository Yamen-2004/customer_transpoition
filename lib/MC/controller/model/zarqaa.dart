class zarqaa {
  String id;
  List<dynamic> point1;
  List<dynamic>  point2;


  zarqaa(
      {this.id = "",
      required this.point1,
      required this.point2,
    });

  factory zarqaa.fromJson(Map<String, dynamic> json) {
    return  zarqaa(
      id: json["_id"],
      point1: json["مجمع الامير راشد"], 
      point2: json["مجمع الملك عبدالله الثاني"],
    );
  }
}
