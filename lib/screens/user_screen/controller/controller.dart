import 'package:api_intregration_with_rahul/model/album_model.dart';
import 'package:api_intregration_with_rahul/services/api_service/api_services.dart';
import 'package:get/get.dart';

class UserScreenController extends GetxController {
  UserModel userModel = UserModel();

  RxBool isFetchCompleted = false.obs;

  void fetchData() {
    ApiService().getFromMapData().then((onValue) {
      userModel = onValue!;
      isFetchCompleted.value = true;
    });
  }

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }
}
