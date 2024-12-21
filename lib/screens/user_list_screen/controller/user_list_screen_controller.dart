import 'package:api_intregration_with_rahul/model/user_list_model.dart';
import 'package:api_intregration_with_rahul/services/api_service/api_services.dart';
import 'package:get/get.dart';

class UserListScreenController extends GetxController {
  RxList<UserListModel> userList = <UserListModel>[].obs;

  void fetchData() {
    ApiService().getFromListData().then((onValue) {
      userList.value = onValue!;
    });
  }

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }
}
