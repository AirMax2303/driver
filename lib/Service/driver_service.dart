import 'dart:convert';

import 'package:driver/Service/service.dart';
import 'package:http/http.dart';

import '../models/driver.dart';

class DriverService {
  late DriverModel driver = const DriverModel();

  Future<DriverModel> getDriver(String id) async {return const DriverModel();}

  Future<List<DriverModel>> getDriverList() async {
    String url = '$host/drivers';
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List result = jsonDecode(utf8convert(response.body));
      return result.map((e) => DriverModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<void> addDriver() async {
    String url = '$host/drivers';
    Response response = await post(Uri.parse(url), body: {
      'id': driver.id,
      'phone': driver.phone,
      'password': driver.password,
      'town': driver.town,
      'refcode': driver.refcode,
      'country': driver.country,
      'surname': driver.surname,
      'name': driver.name,
      'numberDL': driver.numberDL,
      'dateDL': driver.dateDL,
      'carbrand': driver.carbrand,
      'carmodel': driver.carmodel,
      'carcolor': driver.carcolor,
      'caryear': driver.caryear,
      'carNP': driver.carNP,
      'carCTC': driver.carCTC,
      'carType': driver.carType,
      'description': driver.description,
      'age': driver.age,
      'image': driver.image,
      'video': driver.video,
      'question': driver.question,
      'question0': driver.question0,
      'question1': driver.question1,
      'question2': driver.question2,
      'question3': driver.question3,
      'question4': driver.question4,
      'question5': driver.question5,
      'question6': driver.question6,
      'question7':driver.question7
    });
    print(response.body);
  }
}
