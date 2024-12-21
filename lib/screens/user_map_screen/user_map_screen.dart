import 'package:api_intregration_with_rahul/screens/user_map_screen/controller/controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class UserMapScreen extends StatelessWidget {
  const UserMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserScreenController controller = Get.put(UserScreenController());

    return Scaffold(
      appBar: AppBar(
        title:  const Text('Users'),
        centerTitle: true,
      ),
      body: Obx(() {
        return controller.isFetchCompleted.value == false
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: controller.userModel.users!.length,
                itemBuilder: (context, index) {
                  var user = controller.userModel.users![index];
                  return Banner(
                    message: user.firstName.toString(),
                    location: BannerLocation.topStart,
                    child: Card(
                      color: Colors.white10,
                      child: Image.network(user.image.toString()),
                    ),
                  );
                },
              );
      }),
    );
  }
}
