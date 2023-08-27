import 'dart:convert';
import 'package:driver/Service/service.dart';
import 'package:driver/models/db.dart';
import 'package:http/http.dart';
import '../models/grafic.dart';
import '../models/model.dart';

class GraficService {
  List<GraficElement> list = [
    GraficElement(1, []),
    GraficElement(2, []),
    GraficElement(3, []),
    GraficElement(4, []),
    GraficElement(5, []),
    GraficElement(6, []),
    GraficElement(7, []),
  ];

  Future<List<GraficElement>> getGraficList(String clientId) async {
//    list.clear();
    for (int dayweek = 1; dayweek < 8; dayweek++){
      await _getGraficList(clientId, dayweek.toString()).then((value) async {
        list[dayweek - 1].routes.addAll(value);
      });
    }
    return list;
  }

  Future<List<GraficModel>> _getGraficList(String clientId, String dayweek) async {
    String url = '$host/grafics?clientid=$clientId&dayweek=$dayweek';
    Response response = await get(Uri.parse(url));
    print('---------------------------------------------------------');
    if (response.statusCode == 200) {
      final List result = jsonDecode(utf8convert(response.body));
      return result.map((e) => GraficModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<void> addGrafic(GraficModel grafic) async {
    String url = '$host/grafics';
    Response response = await post(Uri.parse(url), body: {
      'clientid': grafic.clientid,
      'gdayweek': grafic.gdayweek,
      'name': grafic.name,
      'gfrom': grafic.gfrom,
      'gto': grafic.gto,
      'gmonth': grafic.gmonth,
      'gtime': grafic.gtime
    });
    list[int.parse(grafic.gdayweek) - 1].routes.add(grafic);
    print(response.body);
  }
}
