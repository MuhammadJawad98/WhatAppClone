import 'file:///D:/app/whatsappclone/whatsappclone/lib/exportLibraries/custom_widgets.dart';

class DatabaseMethods{
  Future<void> addUserInfo(userData) async {
    Firestore.instance.collection("users").add(userData).catchError((e) {
      print("error>>>"+e.toString());
    });
  }
}