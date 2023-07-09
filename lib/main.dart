import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'features/Splash/presentation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

//used get Dependency just for easyNavigation
class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: const SplashView(),
    );
  }
}
/*
  MVVM => Model View Model
    make presentation (folder) have => viewModels & views (by default put widgets folder in views)

*/