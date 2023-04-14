import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:randomuser_api_provider/screen/home/modal/home_modal.dart';

class ApiHelper {
  UserModal userModal = UserModal();

  Future<UserModal> userApi() async {
    String apiLink = "https://randomuser.me/api/";
    Uri uri = Uri.parse(apiLink);
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    userModal = UserModal.fromJson(json);
    return userModal;
  }
}
