import 'package:get/get.dart';
import 'package:primotec_task/UI/controller/product_controller.dart';

class ProductBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());

  }

}