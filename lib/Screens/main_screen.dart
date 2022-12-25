import 'package:flutter/material.dart';
import 'package:project1/Screens/crop_screen.dart';
import 'package:project1/Screens/dashboard_screen.dart';
import 'package:project1/Screens/settings_screen.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  HomeScreenState createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final screens = [
    HomeScreen(),
    DashboardScreen(),
    CropScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'RiceUP',
          style: TextStyle(
            color: Color.fromARGB(255, 21, 81, 35),
            fontSize: 26,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notification_important_outlined,
              color: Color.fromARGB(255, 117, 114, 114),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.lightGreen[900],
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Colors.lightGreen[900],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stacked_bar_chart_outlined,
            ),
            label: 'Dashboard',
            backgroundColor: Colors.lightGreen[900],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.spa,
            ),
            label: 'Crop',
            backgroundColor: Colors.lightGreen[900],
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
            backgroundColor: Colors.lightGreen[900],
          ),
        ],
      ),
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(60.0),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadiusDirectional.only(
      //               topStart: Radius.circular(20.0),
      //               bottomEnd: Radius.circular(20.0)),
      //         ),
      //         clipBehavior: Clip.antiAliasWithSaveLayer,
      //         child: Stack(
      //           alignment: Alignment.bottomCenter,
      //           children: [
      //             const Image(
      //               fit: BoxFit.cover,
      //               height: 200.0,
      //               width: 200.0,
      //               image: NetworkImage(
      //                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST-ZNJyKvvV6lPt8cQcC72RbI3E40bEoTc7A&usqp=CAU",
      //               ),
      //             ),
      //             Container(
      //               width: 200.0,
      //               color: Colors.black.withOpacity(0.7),
      //               padding: const EdgeInsets.symmetric(
      //                 vertical: 10.0,
      //               ),
      //               child: const Text(
      //                 "Rice",
      //                 textAlign: TextAlign.center,
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 24.0,
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     // Container(
      //     //   color: Colors.white10,
      //     //   child: Text(
      //     //     'Overview',
      //     //     style: TextStyle(
      //     //       color: Colors.grey,
      //     //       fontSize: 16.0,
      //     //     ),
      //     //   ),
      //     // ),
      //     // Container(
      //     //   color: Colors.amber,
      //     //   child: Text(
      //     //     'to diagnose',
      //     //     style: TextStyle(
      //     //       color: Colors.blue,
      //     //       fontSize: 16.0,
      //     //     ),
      //     //   ),
      //     // ),
      //   ],
      // ),
    );
  }
}
