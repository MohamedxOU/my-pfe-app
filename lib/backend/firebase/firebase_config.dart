import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCwLirYksKMDlxdKjxVVtFfMVbwkhb_Zig",
            authDomain: "syncpfe.firebaseapp.com",
            projectId: "syncpfe",
            storageBucket: "syncpfe.appspot.com",
            messagingSenderId: "132966925171",
            appId: "1:132966925171:web:8f9c6543202f9ed2047b06"));
  } else {
    await Firebase.initializeApp();
  }
}
