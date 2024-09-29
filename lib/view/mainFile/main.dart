import 'package:customer_transpoition/view/mainFile/All_cities.dart';
import 'package:customer_transpoition/view/mainFile/bestpath.dart';
import 'package:customer_transpoition/view/mainFile/nearbus.dart';
import 'package:customer_transpoition/view/report_file/report.dart';
import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<Widget> pages = [NearBus(), city_option(), bestPath(), ReportPage()];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: pages[_selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar: CircleNavBar(
        tabDurationMillSec: 4000,
        activeIcons: const [
          Icon(Icons.location_pin, color: Color.fromARGB(255, 95, 60, 47)),
          Icon(Icons.edit_road, color: Color.fromARGB(255, 95, 60, 47)),
          Icon(Icons.directions_bus_filled_rounded,
              color: Color.fromARGB(255, 95, 60, 47)),
          Icon(Icons.report, color: Color.fromARGB(255, 95, 60, 47)),
        ],
        inactiveIcons: const [
          Text("Home", style: TextStyle(color: Colors.white, fontSize: 18)),
          Text("Paths", style: TextStyle(color: Colors.white, fontSize: 18)),
          Text("Best direction",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold)),
          Text("Report", style: TextStyle(color: Colors.white, fontSize: 18)),
        ],
        color: Color(0xff799C90).withOpacity(1),
        height: 60,
        circleWidth: 60,
        activeIndex: _selectedIndex,
        onTap: (index) {
          _selectedIndex = index;
          setState(() {});
        },
        padding: const EdgeInsets.only(),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: const Color.fromARGB(255, 88, 49, 35),
        elevation: 20,
      ),
    );
  }
}
