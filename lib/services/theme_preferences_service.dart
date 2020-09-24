import 'package:shared_preferences/shared_preferences.dart';

class ThemePreferencesservice {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<String> obtenerTema() async {
    try {
      final SharedPreferences prefs = await _prefs;

      return prefs.getString('tema');
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> guardarTema(String tema) async {
    try {
      final SharedPreferences prefs = await _prefs;

      return prefs.setString('tema', tema);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
