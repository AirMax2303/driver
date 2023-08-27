import 'dart:convert';
import 'package:driver/Service/service.dart';
import 'package:http/http.dart';
import '../models/client.dart';

class ClientService {
  late ClientModel client = const ClientModel();

  Future<List<ClientModel>> getClientList() async {
    String url = '$host/clients';
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List result = jsonDecode(utf8convert(response.body));
      return result.map((e) => ClientModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<void> addClient() async {
    String url = '$host/clients';
    Response response = await post(Uri.parse(url), body: {
      'id': client.id,
      'phone': client.phone,
      'firstName': client.firstName,
      'lastName': client.lastName,
      'password': client.password
    });
    print(response.body);
  }
}
