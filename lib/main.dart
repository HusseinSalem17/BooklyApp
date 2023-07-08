import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'features/presentation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

//used get Dependency just for easyNavigation
class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}
/*
  MVVM => Model View Model
    make presentation (folder) have => viewModels & views (by default put widgets folder in views)

*/