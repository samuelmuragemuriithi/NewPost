import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA0T6WN7O3wzW5z8IEFXRgTfiNcPn9AI0I",
            authDomain: "need-post-pro-uzl40l.firebaseapp.com",
            projectId: "need-post-pro-uzl40l",
            storageBucket: "need-post-pro-uzl40l.appspot.com",
            messagingSenderId: "653038048597",
            appId: "1:653038048597:web:fef3932ec7486317134bdc"));
  } else {
    await Firebase.initializeApp();
  }
}
