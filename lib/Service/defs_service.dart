import 'dart:convert';

import 'package:driver/models/defs.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class DefsService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<DefsModel> getDefs(String key) async {
    final SharedPreferences prefs = await _prefs;
    final String? defs = prefs.getString(key);
    if (defs == null) {
      var uuid = const Uuid();
      return DefsModel(id: uuid.v1(), pin: '');
    } else {
      return DefsModel.fromJson(jsonDecode(defs));
    }
  }

  Future<void> saveDefs(String key, DefsModel value) async {
    final SharedPreferences prefs = await _prefs;
    final String? defs = prefs.getString(key);
    if (defs != null) {
      prefs.remove('key');
    }
    prefs.setString(key, jsonEncode(value.toJson()));
  }
}
