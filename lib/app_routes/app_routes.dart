import 'package:get/get.dart';
import 'package:personal_web/screens/splash_screen/splash_screen.dart';
import 'package:personal_web/utils/common/loading_dialog.dart';
import 'package:personal_web/utils/root_binding.dart';

appRoutes() => [
      GetPage(
        name: '/splashScreen',
        page: () => const SplashScreen(),
        middlewares: [MyMiddleware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 450),
      ),
      GetPage(
        name: '/onBoardingScreen',
        page: () => const SplashScreen(),
        middlewares: [MyMiddleware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 450),
      ),
      GetPage(
        name: '/homeScreen',
        page: () => const SplashScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 450),
      ),
      GetPage(
        name: '/mainDashboardScreen',
        page: () => const SplashScreen(),
        middlewares: [MyMiddleware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 450),
        binding: RootBinding(),
      ),
      GetPage(
        name: '/timingScreen',
        page: () => const SplashScreen(),
        middlewares: [MyMiddleware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 450),
      ),
      GetPage(
        name: '/calenderScreen',
        page: () => const SplashScreen(),
        middlewares: [MyMiddleware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 450),
      ),
      GetPage(
        name: '/qazaNamazScreen',
        page: () => const SplashScreen(),
        middlewares: [MyMiddleware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 450),
      ),
      GetPage(
        name: '/namazTrackerScreen',
        page: () => const SplashScreen(),
        middlewares: [MyMiddleware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 450),
      ),
    ];

class MyMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    kDebugPrint(page?.name);
    return super.onPageCalled(page);
  }
}
