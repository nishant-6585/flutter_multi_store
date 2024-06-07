import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_store/views/buyers/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyB3sXyJOG4ezNTInBmDkUBG_ybx767ia0Y',
          appId: '1:1011184674042:android:93006b9042cd4bae4ad543',
          messagingSenderId: '1011184674042',
          projectId: 'flutter-multi-store-app-69e57',
          storageBucket: 'gs://flutter-multi-store-app-69e57.appspot.com'
      )
  ) : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Brand-Bold',
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
