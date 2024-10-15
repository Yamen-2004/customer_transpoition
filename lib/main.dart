import 'package:customer_transpoition/ignor/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'routes.dart';
import 'widget/main/appbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const Transpoition());
}

class Transpoition extends StatelessWidget {
  const Transpoition({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: appbar().appBarTheme,
        textTheme: GoogleFonts.splineSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routes: routes().routesScreens,
    );
  }
}
