import 'dart:convert';
import 'package:driver/models/defs.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class DefsService {
  var uuid = const Uuid();
  late DefsModel defs = const DefsModel();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

//  String get pin => defs.pin;
//  set pin(String value) => defs = defs.copyWith(pin: value);

  Future<DefsModel?> getDefs(String key) async {
    final SharedPreferences prefs = await _prefs;
    final String? _defs = prefs.getString(key);
    if (_defs == null) {
      defs = DefsModel(id: uuid.v1(), pin: '');
    } else {
      defs = DefsModel.fromJson(jsonDecode(_defs));
    }
    return defs;
  }

  Future<void> setDefs(String key) async {
    final SharedPreferences prefs = await _prefs;
    if (prefs.getString(key) != null) {
      prefs.remove(key);
    }
    if (defs.id.isEmpty) {
      defs = DefsModel(id: uuid.v1(), pin: '');
    }
    prefs.setString(key, jsonEncode(defs.toJson()));
  }
}
