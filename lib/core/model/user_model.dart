import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  late final String uid;
  late final String userName;
  late final String email;

  UserModel({
    required this.uid,
    required this.userName,
    required this.email,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uid'] = uid;
    data['userName'] = userName;
    data['email'] = email;
    return data;
  }

  static UserModel fromSnap(DocumentSnapshot snap) {
    var snapShot = snap.data() as Map<String, dynamic>;
    return UserModel(
      uid: snapShot["uid"],
      userName: snapShot["userName"],
      email: snapShot["email"],
    );
  }
}
