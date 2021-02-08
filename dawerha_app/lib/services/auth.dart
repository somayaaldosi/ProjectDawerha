import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as FBAuth;

class User {
  final String uid;
  User({@required this.uid});
}

class AuthBase {
  User _userFromFirebase(FBAuth.User user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final authResult = await FBAuth.FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return _userFromFirebase(authResult.user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      final authResult = await FBAuth.FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return _userFromFirebase(authResult.user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> logout() async {
    await FBAuth.FirebaseAuth.instance.signOut();
  }
}
