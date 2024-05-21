import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class Session {
  static Future<void> settoken(String token) async {
    final pref = await SharedPreferences.getInstance();
    pref.setString("AccessToken", token);
  }

  static Future<void> setrole(
      String uid, String rid, String uname, String role, String email,String pass) async {
    final pref = await SharedPreferences.getInstance();
    pref.setString("role", role);
    pref.setString("uid", uid);
    pref.setString("rid", rid);
    pref.setString("uname", uname);
    pref.setString("email", email);
     pref.setString("password", pass);
  }

  static Future allclear() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}
