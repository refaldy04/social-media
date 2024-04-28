/*

store post for display to users
collection name is Post

Each post contains:
- a message
- email 
- timestamp

*/

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreDatabase {
  // current logged in user
  User? user = FirebaseAuth.instance.currentUser;

  // get collection Post from firebase
  final CollectionReference posts =
      FirebaseFirestore.instance.collection('Post');

  // post a message
  Future<void> addPost(String message) {
    return posts.add({
      'UserEmail': user!.email,
      'PostMessage': message,
      'TimeStamp': Timestamp.now()
    });
  }

  // read post from database
  Stream<QuerySnapshot> getPostStream() {
    final postStream = FirebaseFirestore.instance
        .collection("Post")
        .orderBy("TimeStamp", descending: true)
        .snapshots();

    return postStream;
  }
}
