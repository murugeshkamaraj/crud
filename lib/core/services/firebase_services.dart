import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud/core/model/user_model.dart';

class FirebaseServices {
  final firebaseInstance = FirebaseFirestore.instance;

  Future<String> uploadUser(String id, String name, String email) async {
    var response = "no success";
    UserModel model = UserModel(uid: id, userName: name, email: email);
    await firebaseInstance.collection("Users").doc(id).set(model.toJson()).then(
      (value) {
        response = "success";
      },
    );
    return response;
  }
}
