import 'package:get/get.dart';
import 'package:primotec_task/UI/controller/add_user_controller.dart';

class AddUserBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AddUserController());

  }

}