class maan {
  String id;
  List<dynamic> point1;
  List<dynamic>  point2;


  maan(
      {this.id = "",
      required this.point1,
      required this.point2,
    });

  factory maan.fromJson(Map<String, dynamic> json) {
    return  maan(
      id: json["_id"],
      point1: json["مجمع معان"], 
      point2: json["مجمع وادي موسى"],
    );
  }
}
