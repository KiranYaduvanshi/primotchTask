import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:primotec_task/model/product_resposne_model.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductController extends GetxController{

  RxList listData= [].obs;

  // get product List API
  Future<void> getProductList() async{

    var resposne = await http.get(Uri.parse("https://fakestoreapi.com/products"));
    print("resposne ----- $resposne");

    if(resposne.statusCode == 200){
      listData.value = (jsonDecode(resposne.body) as List).map((e) => ProductResposneModel.fromJson(e)).toList();
      print("data ----- ${listData}");


    }
    else{
      Get.snackbar("Error Mesage", resposne.statusCode.toString());
    }


  }
  @override
  void onInit() {
    getProductList();
    super.onInit();
  }


}