import 'dart:convert';

import 'package:asses1/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  final String baseUrl = 'https://reqres.in';
  // late List _user;
  Future<List> getData() async {
    final http.Response res = await http.get(
      Uri.parse('$baseUrl/api/users/'),
    );
    final body = jsonDecode(res.body);
    debugPrint(res.statusCode.toString());
    debugPrint(jsonDecode(res.body)["data"].toString());
    final List temp = jsonDecode(res.body)["data"];
    // _user = temp;
    for (int i = 0; i < temp.length; i++) {
      print(temp[i]['email']);
    }
    return temp;
  }

  // get alluser => _user;
}
