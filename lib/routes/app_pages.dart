import 'package:get/get.dart';
import 'package:getx_app/ui/navigation/navigation_binding.dart';
import 'package:getx_app/ui/navigation/navigation_page.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
