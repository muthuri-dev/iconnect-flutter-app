import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  final String value;
  const FirstPage({super.key, required this.value});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('first'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const CircleAvatar(
              radius: 40.0,
              child: Icon(
                Icons.person,
                size: 60,
              ),
            ),
            Center(child: Text(widget.value)),
          ],
        ),
      ),
      body: ListView(
        children: [
          Text(widget.value),
        ],
      ),
    );
  }
}
