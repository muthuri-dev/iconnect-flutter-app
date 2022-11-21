import 'package:flutter/material.dart';
import 'package:iconnect_flutter_app/components/page1.dart';

class Home extends StatefulWidget {
  const Home({super.key, required String value});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController username = TextEditingController();

    String name = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'data transfer',
          style: TextStyle(fontFamily: 'monospace'),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: username,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'username',
                    labelText: 'Username'),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(name),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            name = username.text;
            if (name != '') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FirstPage(value: name)));
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FirstPage(value: 'kennedy')));
            }
          });
        },
        child: const Text(
          'Click',
          style: TextStyle(fontFamily: 'monospace'),
        ),
      ),
    );
  }
}
