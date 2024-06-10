import 'package:code/Component/CustomElevatedButton_Category list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

import 'view/Home_4sale/NavBar_Pages/CommercialsScreen/AppBarListPages/AllPage.dart';
import 'view/Splash/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme)),
      home: SplashScreen(),
      getPages: [
        GetPage(name: "/", page: () => AllPage()),

      ],
      // HomeScreen(),
    );
  }
}
