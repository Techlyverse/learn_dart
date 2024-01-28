import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:profanity_filter/profanity_filter.dart';

class ContentFilteringClass {
  final filter = ProfanityFilter();
  final firestore = FirebaseFirestore.instance;
  final uid = ""; //TODO: UserModel().user.userId;
  final CollectionReference abusiveUsersCollection =
      FirebaseFirestore.instance.collection('AbusiveUsers');

  filterString(String message) {
    if (filter.hasProfanity(message)) {
      log(filter.getAllProfanity(message).toString());
      saveBadWords(filter.getAllProfanity(message));
    }
  }

  Future<void> saveBadWords(List<String> listBadWords) async {
    abusiveUsersCollection.doc(uid).get().then((snapshot) {
      if (snapshot.exists) {
        // User ID already exists in the abusive user list, update the user information
        Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
        int existingWordCount = (data['wordCount'] as int?) ?? 0;
        int newWordCount = existingWordCount + listBadWords.length;
        abusiveUsersCollection.doc(uid).update({
          'userid': uid,
          'wordCount': newWordCount,
          'abusiveWords': FieldValue.arrayUnion(listBadWords),
          'timestamp': DateTime.now(),
        });
      } else {
        // User ID doesn't exist in the abusive user list, add the new user information
        abusiveUsersCollection.doc(uid).set({
          'userid': uid,
          'wordCount': listBadWords.length,
          'abusiveWords': listBadWords,
          'timestamp': DateTime.now()
        });
      }
    }).catchError((error) {
      // Handle error
      debugPrint('Error checking abusive user: $error');
    });
  }
}
