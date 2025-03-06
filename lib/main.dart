import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'routes.dart';
import 'widget/main/appbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
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
