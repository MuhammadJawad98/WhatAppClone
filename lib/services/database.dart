import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  Future<void> addUserInfo(userData) async {
    Firestore.instance.collection("users").add(userData).catchError((e) {
      print("error>>>"+e.toString());
    });
  }
}