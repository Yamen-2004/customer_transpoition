class url {
  String k = "192.168.8.110";

  late String uri_ajloun;
  late String uri_amman;
  late String uri_irbid;
  late String uri_jarash;
  late String uri_aqaba;
  late String uri_maan;
  late String uri_karak;
  late String uri_tafileh;
  late String uri_mafraq;
  late String uri_zarqaa;
  late String uri_madaba;
  late String uri_balqaa;

  url() {
    uri_ajloun = "http://$k:3000/ajloun/points";
    uri_amman = "http://$k:3000/amman/points";
    uri_irbid = "http://$k:3000/irbid/points";
    uri_jarash = "http://$k:3000/jarash/points";
    uri_aqaba = "http://$k:3000/aqaba/points";
    uri_maan = "http://$k:3000/maan/points";
    uri_karak = "http://$k:3000/karak/points";
    uri_tafileh = "http://$k:3000/tafileh/points";
    uri_mafraq = "http://$k:3000/mafraq/points";
    uri_zarqaa = "http://$k:3000/zarqaa/points";
    uri_madaba = "http://$k:3000/madaba/points";
    uri_balqaa = "http://$k:3000/balqaa/points";
  }
}
