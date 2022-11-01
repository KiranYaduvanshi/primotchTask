import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primotec_task/UI/controller/add_user_controller.dart';
import 'package:velocity_x/velocity_x.dart';

class AddUserPage extends StatelessWidget{
  AddUserController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: "Add User".text.make(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
          child: Column(
          children: [
            TextFormField(
              controller: controller.emailController,
              decoration: const InputDecoration(
                hintText: "email"
              ),
            ).p(10),
            TextFormField(
              controller: controller.userNameController,
              decoration: const InputDecoration(
                  hintText: "user Name"
              ),
            ).p(10),
            TextFormField(
              controller: controller.passController,
              decoration: const InputDecoration(
                  hintText: "password"
              ),

            ).p(10),
            TextFormField(
              controller: controller.nameController,
              decoration: InputDecoration(
                  hintText: "first name"
              ),
            ).p(10),
            TextFormField(
              controller: controller.lastNameController,
              decoration: InputDecoration(
                  hintText: "last name"
              ),
            ).p(10),
            TextFormField(
              controller: controller.addressController,
              decoration: InputDecoration(
                  hintText: "address"
              ),
            ).p(10),
            TextFormField(
              controller: controller.phoneController,
              decoration: const InputDecoration(
                  hintText: "phone"

              ),
            ).p(10),

            TextFormField(
              controller: controller.cityController,
              decoration: const InputDecoration(
                  hintText: "city"
              ),
            ).p(10),
            TextFormField(
              controller: controller.streetController,
              decoration: InputDecoration(
                  hintText: "street"
              ),
            ).p(10),
            TextFormField(
              controller: controller.numberController,
              decoration: InputDecoration(
                  hintText: "number"
              ),
            ).p(10),
            TextFormField(
              controller: controller.zipCodeController,
              decoration: InputDecoration(
                  hintText: "zip code"
              ),
            ).p(10),

            Center(
              child: ElevatedButton(onPressed: (){
                controller.submitData();
              },child: "Add user".text.make().p(10),),
            )
          ],
        ),

        ),
      ),
    );
  }
}