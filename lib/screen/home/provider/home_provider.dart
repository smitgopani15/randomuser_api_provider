import 'dart:math';
import 'package:flutter/material.dart';
import 'package:randomuser_api_provider/screen/home/modal/home_modal.dart';
import 'package:randomuser_api_provider/utils/api_helper.dart';

class HomeProvider extends ChangeNotifier {
  ApiHelper apiHelper = ApiHelper();
  UserModal userModal = UserModal();

  Future<UserModal> userApiCall() async {
    var response = await apiHelper.userApi();
    userModal = response;
    return userModal;
  }

  int index = 0;

  void changeIndex() {
    Random randomNum = Random();
    index = randomNum.nextInt(5);
    notifyListeners();
  }
}
