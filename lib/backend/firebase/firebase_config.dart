import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB88Ak4hIYN10uf6AaxADyEugJ_syx3g2g",
            authDomain: "eurofinal.firebaseapp.com",
            projectId: "eurofinal",
            storageBucket: "eurofinal.appspot.com",
            messagingSenderId: "643851805513",
            appId: "1:643851805513:web:97a5c56bcf754e5fb5f098",
            measurementId: "G-YWEEXCGJ2V"));
  } else {
    await Firebase.initializeApp();
  }
}
