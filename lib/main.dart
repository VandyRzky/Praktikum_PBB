import 'package:flutter/material.dart';
import 'package:gotravel/pages/login/login.dart';
import 'package:gotravel/pages/signup/signup.dart';
import 'package:gotravel/pages/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: const Color(0xFF0194F3),
          onPrimary: Colors.white,
          secondary: const Color(0xFF707071),
          onSecondary: Colors.white,
          background: const Color(0xFFFEFCFF),
          onBackground: const Color(0xFF000000),
          surface: Colors.white,
          onSurface: const Color(0xFF000000),
          error: Colors.red,
          onError: Colors.white,
        ),
        primaryColor: const Color(0xFF0194F3),
        scaffoldBackgroundColor: const Color(0xFFFEFCFF),
      ),
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => Login(),
        '/signup': (context) => SignUp()
      },
      initialRoute: '/',
      // home: SignUp(),
    );
  }
}
