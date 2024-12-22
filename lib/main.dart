import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:project_k/core/routes/routes_manage.dart';
import 'package:project_k/core/routes/routes_name.dart';
import 'package:project_k/core/themes/theme_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392.72727272727275, 825.4545454545455),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeConfig.lightThemeConfig,
        darkTheme: ThemeConfig.darkThemeConfig,
        onGenerateRoute: RoutesManage.onGenerateRoutes,
        initialRoute: RoutesName.homePage,
      ),
    );
  }
}
