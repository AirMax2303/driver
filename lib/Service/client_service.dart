import 'dart:convert';
import 'package:http/http.dart';
import '../models/client.dart';

class ClientService {
  Future<List<ClientModel>> getClientList() async {
    String url = 'https://bonus.andreyp.ru/client';
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => ClientModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<void> sevaClient(ClientModel client) async {
    String url = 'https://bonus.andreyp.ru/client';
  }
}
