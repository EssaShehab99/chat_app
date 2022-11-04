import 'package:chat_app/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primaryColor: const Color(0xFF29C06C),
          scaffoldBackgroundColor: Color(0xFFFFFFFF),
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Color(0xFF29C06C),
              onPrimary: Color(0xFFFFFFFF),
              secondary: Color(0xFF4D4D4D),
              onSecondary: Color(0xFFE5E5E5),
              error: Color(0xFFFFFFFF),
              onError: Color(0xFFFFFFFF),
              background: Color(0xFFFFFFFF),
              onBackground: Color(0xFFFFFFFF),
              surface: Color(0xFFFFFFFF),
              onSurface: Color(0xFFFFFFFF)),
          textTheme: const TextTheme(
              headline1: TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF4D4D4D,)),
              headline3: TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF4D4D4D,)),
              headline4: TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xFF9D9D9D,)),
              headline2: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF000000,)),
            headline5: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: Color(0xFFCBCBCB,)),
          )),
      darkTheme: ThemeData(
          primaryColor: const Color(0xFF29C06C),
          scaffoldBackgroundColor: Color(0xFF000000),
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Color(0xFF29C06C),
              onPrimary: Color(0xFFFFFFFF),
              secondary: Color(0xFF4D4D4D),
              onSecondary: Color(0xFF313131),
              error: Color(0xFFFFFFFF),
              onError: Color(0xFFFFFFFF),
              background: Color(0xFF282828),
              onBackground: Color(0xFFFFFFFF),
              surface: Color(0xFFFFFFFF),
              onSurface: Color(0xFFFFFFFF)),
          textTheme: const TextTheme(
              headline1: TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFFFFFFFF,)),
              headline3: TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFFFFFFFF,)),
              headline4: TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xFFFFFFFF,)),
              headline2: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFFFFFFFF,)),
              headline5: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Color(0xFFCBCBCB,)),
          )),
      home: const ChatScreen(),
    );
  }
}
