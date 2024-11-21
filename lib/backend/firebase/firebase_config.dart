import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDACP9F8j3Ihtr8ouoi5mcNN_-6XaXANYU",
            authDomain: "clinicahospipet-54fe4.firebaseapp.com",
            projectId: "clinicahospipet-54fe4",
            storageBucket: "clinicahospipet-54fe4.appspot.com",
            messagingSenderId: "385924090862",
            appId: "1:385924090862:web:7f87d55c8388dae9a59cff",
            measurementId: "G-R3N8938HDD"));
  } else {
    await Firebase.initializeApp();
  }
}
