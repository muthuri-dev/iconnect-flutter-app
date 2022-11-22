import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconnect_flutter_app/views/Home.dart';
import 'package:material_color_gen/material_color_gen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Color.fromARGB(255, 2, 37, 3).toMaterialColor(),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.deepPurple,
        ),
      ),
      home: const Home(),
    ),
  );
}
