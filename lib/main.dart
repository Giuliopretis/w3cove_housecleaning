import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w3cove_housecleaning/firebase_options.dart';
import 'package:w3cove_housecleaning/presentation/resources/theme_manager.dart';

import 'presentation/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'W3coveHousecleaning',
      darkTheme: getApplicationTheme(),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
      // darkTheme: getApplicationTheme(),
    );
  }
}
