import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBV_SQeK6PWjinG9gjuDlg9xukgqPOKrtU",
            authDomain: "responsive-application-wst5fq.firebaseapp.com",
            projectId: "responsive-application-wst5fq",
            storageBucket: "responsive-application-wst5fq.firebasestorage.app",
            messagingSenderId: "1083982207891",
            appId: "1:1083982207891:web:2633a4ec62c16276d06666"));
  } else {
    await Firebase.initializeApp();
  }
}
