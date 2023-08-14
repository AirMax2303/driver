import 'dart:convert';

import 'package:http/http.dart';

import '../models/driver.dart';

class DriverService {

  Future<DriverModel> getDriver(String id) async {return const DriverModel();}

  Future<List<DriverModel>> getList() async {
    String url = 'https://bonus.andreyp.ru/api/v1/';
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      return result.map((e) => DriverModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<void> add(DriverModel driver) async {

  }
}
