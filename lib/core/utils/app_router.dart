import 'package:go_router/go_router.dart';

import '../../features/Splash/presentation/views/splash_view.dart';
import '../../features/home/presentation/views/home_view.dart';

//organice the views
abstract class AppRouter {
  static const kHomeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        //use path to nabigate to the screen (first screen known from / (initial))
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}
