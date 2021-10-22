import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:dio/dio.dart';

class RestStorage {
  Dio dio = Dio();

  final baseUrl = 'http://localhost:8081:ords/testuser/api';

  Future<dynamic> getStoregeValue() async {
    try {
      return await dio
          .get('http://192.168.222.222:8081/ords/testuser/api/get?cid=1');
    } catch (error) {
      return null;
    }
  }

  Future<List<Map<String, dynamic>>?> loadRestValue() async {
    String? jsonV = await getStoregeValue();
    if (jsonV != null) {
      List<Map<String, dynamic>> restV = jsonDecode(jsonV);
      print(restV);
      return null;
    } else {
      return null;
    }
  }
}
