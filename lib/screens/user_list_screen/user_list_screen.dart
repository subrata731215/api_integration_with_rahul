import 'package:api_intregration_with_rahul/screens/user_list_screen/controller/user_list_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserListScreenController controller = Get.put(UserListScreenController());

    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text('User List Screen'),
        ),
        body: controller.userList.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: controller.userList.length,
                itemBuilder: (context, index) {
                  final user = controller.userList[index];
                  return Banner(
                    message: user.id.toString(),
                    location: BannerLocation.topStart,
                    child: Card(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                height: 250,
                                width: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(image: NetworkImage(user.downloadUrl.toString()))),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              user.author.toString(),
                              style: const TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
      );
    });
  }
}
