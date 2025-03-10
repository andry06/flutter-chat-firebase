import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_chat_firebase/data/models/user_model.dart';

class FirebaseDatasource {
  FirebaseDatasource._init();

  static final FirebaseDatasource instance = FirebaseDatasource._init();

  Future<bool> isUserExist(String id) async {
    final snap =
        await FirebaseFirestore.instance.collection('users').doc(id).get();
    return snap.exists;
  }

  Future<void> setUserToFirestore(UserModel user) async {
    FirebaseFirestore.instance
        .collection('users')
        .doc(user.id)
        .set(user.toMap());
  }

  Stream<List<UserModel>> allUser() {
    return FirebaseFirestore.instance
        .collection('users')
        .snapshots()
        .map((snapShot) {
      List<UserModel> rs = [];
      for (var element in snapShot.docs) {
        rs.add(UserModel.fromDocumentSnapshot(element));
      }
      return rs;
    });
  }
}
