import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'View/Screens/HomePage.dart';
import 'View/Screens/detailscreen.dart';
import 'View/Screens/splashscreen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => SplashScreen(),),
        GetPage(name: '/home', page: () => HomeScreen(),),
        GetPage(name: '/detail', page: () => DetailScreen(),),

      ],
    );
  }
}

