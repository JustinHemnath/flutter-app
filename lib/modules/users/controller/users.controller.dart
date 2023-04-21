import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UsersController extends GetxController {
  List usersData = [].obs;

  Future<void> fetchUsers() async {
    const url = "http://172.16.0.155:3001/getusers";
    final response = await http.get(Uri.parse(url));

    var responseData = jsonDecode(response.body);
    usersData = responseData;
  }
}
