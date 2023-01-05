import 'package:get/get.dart';
import 'package:vxs/auth_controller/auth_controller.dart';

class AuthBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<AuthController>(() => AuthController());
  }
}