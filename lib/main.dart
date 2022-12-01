import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/buoys_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: kLoginScreenId,
      routes: {
        kLoginScreenId: (context) => LoginScreen(),
        kRegisterScreenId: (context) => RegisterScreen(),
        kBuoysScreenId: (context) => BuoysScreen(),
      },
    );
  }
}
