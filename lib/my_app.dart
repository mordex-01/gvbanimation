import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gvbanimation/binding/home_page_binding.dart';
import 'package:gvbanimation/view/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.homePageRoute,
      getPages: [
        GetPage(
          name: HomePage.homePageRoute,
          page: () => HomePage(),
          binding: HomePageBinding(),
        )
      ],
    );
  }
}
