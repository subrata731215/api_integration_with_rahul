import 'dart:convert';
import 'package:api_intregration_with_rahul/model/user_list_model.dart';
import 'package:api_intregration_with_rahul/model/user_map_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<UserListModel>?> getFromListData() async {
    var response = await http.get(Uri.parse('https://picsum.photos/v2/list?page=2&limit=130'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      List<UserListModel> model = List<UserListModel>.from(data.map((x) => UserListModel.fromJson(x)));
      return model;
    }

    return null;
  }

  Future<UserModel?> getFromMapData() async {
    var response = await http.get(Uri.parse('https://dummyjson.com/users'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      UserModel model = UserModel.fromJson(data);
      return model;
    }

    return null;
  }
}
