import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UsersController extends GetxController {
  RxList usersData = [].obs;

  Future<void> fetchUsers() async {
    const url = "http://192.168.1.2:3001/getusers";
    final response = await http.get(Uri.parse(url));

    var responseData = jsonDecode(response.body);
    usersData.value = responseData;
  }

  Future<void> sendUser({String? enteredName}) async {
    if (enteredName == null || enteredName == "") {
      return;
    } else {
      const url = "http://192.168.1.2:3001/user";
      final response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{'name': enteredName}),
      );
    }

    fetchUsers();
  }

  Future<void> deleteUser({String? name}) async {
    if (name == null || name == "") {
      return;
    } else {
      const url = "http://192.168.1.2:3001/user";
      final response = await http.delete(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{'name': name}),
      );
    }

    fetchUsers();
  }
}
