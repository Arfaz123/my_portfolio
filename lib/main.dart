import 'package:dynamicutils/dynamic_size.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:personal_web/app_routes/app_routes.dart';
import 'package:personal_web/screens/splash_screen/splash_screen.dart';
import 'package:personal_web/utils/common/coustom_package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'utils/root_binding.dart';

SharedPreferences? pref;

DynamicSize size = DynamicSize(852, 393);
// FirebasePerformance firebasePerformance = FirebasePerformance.instance;
// FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppPackageInfo().init();
  pref = await SharedPreferences.getInstance();

  RootBinding().dependencies();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // firebaseAnalytics;
  // firebasePerformance;

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyPersonalPortfolioWeb());

}

class MyPersonalPortfolioWeb extends StatefulWidget {
  const MyPersonalPortfolioWeb({Key? key}) : super(key: key);

  @override
  State<MyPersonalPortfolioWeb> createState() => _MyPersonalPortfolioWebState();
}

class _MyPersonalPortfolioWebState extends State<MyPersonalPortfolioWeb> {
  // ThemesService themeService = Get.put(ThemesService());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Masjids Near Me",
      builder: (context, child) {
        return ScrollConfiguration(
            behavior: MyBehavior(),
            child: child!);
      },
      debugShowCheckedModeBanner: false,
      // navigatorObservers: [
      //   FirebaseAnalyticsObserver(analytics: firebaseAnalytics),
      // ],
      initialBinding: RootBinding(),
      // theme: AppColors.buildLightTheme(),
      // theme: themeService.selectedTheme.value == ThemeModeOption.light
      //     ? themeService.lightThemeData
      //     : themeService.darkThemeData,
      // darkTheme: themeService.darkThemeData,
      // themeMode: themeService.themeMode,
      home: const SplashScreen(),
      initialRoute: '/splashScreen',
      getPages: appRoutes(),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}