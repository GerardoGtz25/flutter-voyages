import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_course/User/model/user.dart';
import 'package:flutter_course/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(User user) => _cloudFirestoreAPI.updateUserData(user);
}