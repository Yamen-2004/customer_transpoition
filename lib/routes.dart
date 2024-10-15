import 'package:flutter/widgets.dart';
import 'package:customer_transpoition/view/city_points/all.dart';

import 'package:flutter/material.dart';

import 'view/mainFile/all.dart';

class routes {
  Map<String, Widget Function(BuildContext)> routesScreens = {
    "/": (context) => onBoarding(),
    "/main": (context) => homePage(),
    "/ghor": (context) => const ghor(),
    "/oldghor": (context) => const oldghor(),
    "/khalil": (context) => const khalil(),
    "/amman": (context) => const amman(),
    "/shamali": (context) => const shamali(),
    // Irbid Points finished

    "/city_option": (context) => city_option(),
    "/IrbidPoints": (context) => irbid_points(),
    "/AmmanPoints": (context) => amman_points(),
    "/AjlounPoints": (context) => ajloun_points(),
    "/JarashPoints": (context) => jarash_points(),
    "/AqabaPoints": (context) => aqaba_points(),
    "/MaanPoints": (context) => maan_points(),
    "/KarakPoints": (context) => karak_points(),
    "/balqaaPoints": (context) => balqaa_points(),
    "/tafilahPoints": (context) => tafilah_points(),
    "/madabaPoints": (context) => madaba_points(),
    "/mafraqPoints": (context) => mafraq_points(),
    "/zarqaaPoints": (context) => zarqaa_points(),
    // Irbid Points finished
    "/ammanPoint1": (context) => const al_mahata(),
    "/ammanPoint2": (context) => const shamal(),
    "/ammanPoint3": (context) => const janoob(),
    // Amman Points finished
    "/ajlounPoint1": (context) => const ajlounpoint1(),
    // Ajloun Points finished
    "/aqabaPoint1": (context) => const aqabapoint1(),
    //Aqaba Points finished
    "/balqaaPoint1": (context) => const balqaapoint1(),
    "/balqaaPoint2": (context) => const balqaapoint2(),
    "/balqaaPoint3": (context) => const balqaapoint3(),
    //Balqaa Points finished
    "/jarashPoint1": (context) => const jarashpoint1(),
    //Jarash Points finished
    "/mafraqPoint1": (context) => const mafraqpoint1(),
    "/mafraqPoint2": (context) => const mafraqpoint2(),
    //Mafraq Points finished
    "/tafilehPoint1": (context) => const tafilehpoint1(),
    "/tafilehPoint2": (context) => const tafilehpoint2(),
    //Tafilah Points finished
    "/karakPoint1": (context) => const karakpoint1(),
    "/karakPoint2": (context) => const karakpoint2(),
    //Karak Points finished
    "/maanPoint1": (context) => const maanpoint1(),
    "/maanPoint2": (context) => const maanpoint2(),
    //Maan Points finished
    "/madabaPoint1": (context) => const madabapoint1(),
    "/madabaPoint2": (context) => const madabapoint2(),
    //Madaba Points finished
    "/zarqaaPoint1": (context) => const zarqaapoint1(),
    "/zarqaaPoint2": (context) => const zarqaapoint2(),
    //Zarqaa Points finished
  };
}
