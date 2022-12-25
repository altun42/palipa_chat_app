import 'package:get/get_navigation/src/routes/get_route.dart';

import '../modules/login/login_binding.dart';
import '../modules/login/login_screen.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
  ];
}
