import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDiPEdfjFtpTxj0RAfk-Ct0CKeqnybHndw",
            authDomain: "trivia-c94a2.firebaseapp.com",
            projectId: "trivia-c94a2",
            storageBucket: "trivia-c94a2.appspot.com",
            messagingSenderId: "591384356871",
            appId: "1:591384356871:web:29b05889a31f1f022322a2"));
  } else {
    await Firebase.initializeApp();
  }
}
