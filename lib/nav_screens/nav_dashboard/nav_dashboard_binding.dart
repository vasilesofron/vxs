import 'package:get/get.dart';
import 'package:vxs/nav_screens/farm/farm_controller.dart';
import 'package:vxs/nav_screens/home/home_controller.dart';
import 'package:vxs/nav_screens/nav_dashboard/nav_dashboard_controller.dart';

class NavDashboardBinding extends Bindings{

  @override
  void dependencies(){
    Get.lazyPut<NavDashboardController>(() => NavDashboardController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<FarmHomeController>(() => FarmHomeController());
  }
}