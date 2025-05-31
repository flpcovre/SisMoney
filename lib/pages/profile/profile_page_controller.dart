import 'package:get/get.dart';
import 'package:sismoney/controllers/auth_controller.dart';
import 'package:sismoney/routes/router_app.dart';

class ProfilePageController {
  final AuthController _authController = Get.find<AuthController>();

  void logout() async {
    await _authController.signOut();
    await Get.offAllNamed(RouterApp.login);
  }
}