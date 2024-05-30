import 'package:get/get.dart';

import '../modules/NewsDetail/bindings/news_detail_binding.dart';
import '../modules/NewsDetail/views/news_detail_view.dart';
import '../modules/highlight/bindings/highlight_binding.dart';
import '../modules/highlight/views/highlight_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NEWS_DETAIL,
      page: () => NewsDetailView(),
      binding: NewsDetailBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HIGHLIGHT,
      page: () => const HighlightView(),
      binding: HighlightBinding(),
    ),
  ];
}
