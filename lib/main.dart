import 'package:customer_transpoition/ignor/firebase_options.dart';
import 'package:customer_transpoition/view/city_points/all.dart';
import 'package:customer_transpoition/view/city_points/nodata.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'view/mainFile/all.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(Transpoition());
}

class Transpoition extends StatelessWidget {
  const Transpoition({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          shadowColor: Color.fromARGB(255, 95, 60, 47),
          elevation: 20,
          centerTitle: true,
          toolbarHeight: 60,
          titleTextStyle: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 253, 253)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(60)),
          ),
          backgroundColor: Color(0xff799C90),
        ),
        textTheme: GoogleFonts.splineSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routes: {
        "/": (context) => onBoarding(),
        "/main": (context) => homePage(),
        "/ghor": (context) => const ghor(),
        "/oldghor": (context) => const oldghor(),
        "/khalil": (context) => const khalil(),
        "/amman": (context) => const amman(),
        "/shamali": (context) => const shamali(),

        "/city_option": (context) => city_option(),
        "/IrbidPoints": (context) => irbid_points(),
        "/AmmanPoints": (context) => amman_points(),
        "/nodata": (context) => const NoData(),
        // Irbid Points finished
        "/ammanPoint1": (context) => const al_mahata(),
        "/ammanPoint2": (context) => const shamal(),
        "/ammanPoint3": (context) => const janoob(),
        // Amman Points finished
      },
    );
  }
}
