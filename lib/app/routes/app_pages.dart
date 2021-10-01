import 'package:get/get.dart';
import 'package:pilemnesia/app/modules/home/views/home_view.dart';

import 'package:pilemnesia/app/modules/detail/bindings/detail_binding.dart';
import 'package:pilemnesia/app/modules/detail/views/detail_view.dart';
import 'package:pilemnesia/app/modules/home/bindings/home_binding.dart';
import 'package:pilemnesia/app/modules/list/bindings/list_binding.dart';
import 'package:pilemnesia/app/modules/list/views/list_view.dart';
import 'package:pilemnesia/app/modules/search/bindings/search_binding.dart';
import 'package:pilemnesia/app/modules/search/views/search_view.dart';
import 'package:pilemnesia/app/modules/tabs/bindings/tabs_binding.dart';
import 'package:pilemnesia/app/modules/tabs/views/tabs_view.dart';
import 'package:pilemnesia/app/modules/users/bindings/users_binding.dart';
import 'package:pilemnesia/app/modules/users/views/users_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.TABS;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LIST,
      page: () => ListView(),
      binding: ListBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.TABS,
      page: () => TabsView(),
      binding: TabsBinding(),
    ),
    GetPage(
      name: _Paths.USERS,
      page: () => UsersView(),
      binding: UsersBinding(),
    ),
  ];
}
