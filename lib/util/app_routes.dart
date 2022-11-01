import 'package:get/utils.dart';
import 'package:primotec_task/UI/add_user.dart';
import 'package:primotec_task/UI/binding/add_user_binding.dart';
import 'package:primotec_task/UI/binding/product_binding.dart';
import 'package:primotec_task/UI/product_list.dart';
import 'package:primotec_task/util/app_pages.dart';
import 'package:get/get.dart';

class AppRoutes{
  static const String initialRoute= AppPages.addUser;
  static  final routes=[
    GetPage(name: AppPages.productPage, page: () => ProductPage(),binding: ProductBinding()),
    GetPage(name: AppPages.addUser, page: () => AddUserPage(),binding: AddUserBinding()),

  ];
}