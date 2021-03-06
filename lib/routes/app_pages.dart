import 'package:get/get.dart';
import 'package:getx_app/ui/birthday_date/birthday_date_page.dart';
import 'package:getx_app/ui/chat/chat_page.dart';
import 'package:getx_app/ui/chat/chat_page_two.dart';
import 'package:getx_app/ui/filtres/filtres_page.dart';
import 'package:getx_app/ui/interests/interests_page.dart';
import 'package:getx_app/ui/my_city/my_city_page.dart';
import 'package:getx_app/ui/navigation/navigation_binding.dart';
import 'package:getx_app/ui/navigation/navigation_page.dart';
import 'package:getx_app/ui/procents_match/procents_match_page.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
        name: AppRoutes.DASHBOARD,
        page: () => DashboardPage(),
        binding: DashboardBinding()),
    GetPage(name: '/bithday_date_page', page: () => BirthdayDatePage()),
    GetPage(name: '/mycity_page', page: () => MyCityPage()),
    GetPage(name: '/chat_page', page: () => ChatPage()),
    GetPage(name: '/chat_page_two', page: () => ChatPageTwo()),
    GetPage(name: '/interests_page', page: () => InterestsPage()),
    GetPage(name: '/filtres_page', page: () => FiltresPage()),
    GetPage(name: '/procents_page', page: () => ProcentsPage()),
  ];
}
