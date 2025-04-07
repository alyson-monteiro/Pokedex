//Firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

//Mateiral UI
import 'package:flutter/material.dart';

//Paginas
import 'package:pokedex/pages/login_page.dart';
import 'package:pokedex/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBiz_5-XCes2FELsyCVZhDfGkqNfCkXEwg",
        authDomain: "pokedex-app-5ae06.firebaseapp.com",
        projectId: "pokedex-app-5ae06",
        storageBucket: "pokedex-app-5ae06.firebasestorage.app",
        messagingSenderId: "663361280409",
        appId: "1:663361280409:web:c7f013ca987b74acbc1b08"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
