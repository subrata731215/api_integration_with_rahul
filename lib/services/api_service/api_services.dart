import 'dart:convert';
import 'package:api_intregration_with_rahul/model/album_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  // Future<List?> getFromListData() async {
  //   var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  //
  //   if (response.statusCode == 200) {
  //     var data = jsonDecode(response.body.toString());
  //     List<AlbumModel> model = List<AlbumModel>.from(data.map((x) => AlbumModel.fromJson(x)));
  //     return model;
  //   }
  //
  //   return null;
  // }

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
