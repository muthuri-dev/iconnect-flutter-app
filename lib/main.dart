import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconnect_flutter_app/views/View.dart';
import 'package:material_color_gen/material_color_gen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Color.fromARGB(255, 6, 124, 10).toMaterialColor(),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.deepPurple,
        ),
      ),
      home: const Home(),
    ),
  );
}
