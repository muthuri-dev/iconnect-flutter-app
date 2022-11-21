import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconnect_flutter_app/components/page2.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Home(
        value: '',
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
