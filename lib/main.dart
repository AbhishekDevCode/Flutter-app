import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screens/UI/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDy1_X6pAgCM_Z0ceXgfbWatQ1V6k8JFE0",
        appId: "1:39527465509:web:70d01b6cb9d27c66a375cc",
        messagingSenderId: "39527465509",
        projectId: "fir-auth-ed920"),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}
