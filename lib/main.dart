
import 'package:flutter/material.dart';
import 'package:whatsapp/screens/HomePage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.teal,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.black.withOpacity(0),
      )
    ),
    routes: {
      "/" : (context) => HomePage(),
    },
    debugShowCheckedModeBanner: false,
  ),
  );
}
