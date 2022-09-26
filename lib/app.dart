import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:photo_book/src/constants/constants.dart';
import 'package:photo_book/src/controllers/home_page_controller.dart';
import 'package:photo_book/src/screens/home_page.dart';
import 'package:photo_book/src/screens/profile_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteKey.homepage,
      getPages: [
        GetPage(
            name: RouteKey.homepage,
            page: () => const HomePage(),
            binding: BindingsBuilder.put(() => Homecontroller())),
        GetPage(
          name: RouteKey.profilescreen,
          page: () => ProfileScreen(),
        ),
      ],
    );
  }
}
