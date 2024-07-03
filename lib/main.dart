import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    // await Firebase.initializeApp(
    //     options: const FirebaseOptions(
    //         apiKey: "AIzaSyCpHATBO8HpOPZXLszFp6u5xSd1pQL-NAw",
    //         authDomain: "healthypet-4eb1c.firebaseapp.com",
    //         projectId: "healthypet-4eb1c",
    //         storageBucket: "healthypet-4eb1c.appspot.com",
    //         messagingSenderId: "715381782528",
    //         appId: "1:715381782528:web:e323376d647085afbfc0e5",
    //         measurementId: "G-P8L5QGJC3C"));
  } else {}

  runApp(const MyApp());
}
