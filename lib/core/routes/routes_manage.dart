import 'package:flutter/material.dart';
import 'package:project_k/core/routes/routes_name.dart';
import 'package:project_k/presentation/home/pages/home_page.dart';

import '../../common/widgets/no_data_page.dart';
import '../../utils/constants/assets_consts.dart';

class RoutesManage {
  RoutesManage._();

  static Map<String, WidgetBuilder> routes(Object? args) => {
        // RoutesName.mainPage: (context) => const MainPage(),
        RoutesName.homePage: (context) => const HomePage(),
      };

  static Route<dynamic> onGenerateRoutes(RouteSettings routeSettings) {
    final builder = routes(routeSettings.arguments)[routeSettings.name];

    if (builder != null) {
      return MaterialPageRoute(
        builder: (context) => builder(context),
      );
    } else {
      return MaterialPageRoute(
        builder: (context) => const NoDataPage(
          icon: AssetsConsts.noDataIcon,
          text: "No page found!",
        ),
      );
    }
  }
}

class MainPage {
  const MainPage();
}
