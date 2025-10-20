import 'package:flutter/material.dart';

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
        primaryColor: Color(0xFF0194F3),
        scaffoldBackgroundColor: Color(0xFFFEFCFF),
        textTheme: TextTheme(
          bodySmall: TextStyle(fontSize: 12, color: Color(0xFF707071), fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(fontSize: 16, color: Color(0xFF000000), fontWeight:  FontWeight.w600),
          bodyLarge: TextStyle(fontSize: 20, color: Color(0xFF000000), fontWeight: FontWeight.w600)
        )
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
