import 'dart:convert';
import 'package:http/http.dart';
import '../models/person.dart';

class PersonService {
  Future<List<PersonModel>> getPersonList() async {
    String url = 'https://bonus.andreyp.ru/person';
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => PersonModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
