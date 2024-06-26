import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_route.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:  const FirebaseOptions(
        apiKey: "AIzaSyCQHiHPhZ9dkzDDFqRDPAsTFb5MfKNaVKY",
        appId: "1:390984598927:android:db531858919b2ab99ab7fa",
        messagingSenderId: "390984598927",
        projectId: "crud-b4bce")
  ).then((value) {
    print("Firebase Started");
  },);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TODO App',
      enableLog: true,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteNames.userScreen,
      getPages: AppRoute.route,
    );
  }
}

