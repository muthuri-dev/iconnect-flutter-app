import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:iconnect_flutter_app/views/View.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final TextEditingController nameController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          Image(
            image: Svg("lib/assets/seventh.svg"),
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.width * .8,
          ),
          Text(
            'Welcome Back',
            style: TextStyle(
                fontFamily: 'monospace',
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  hintText: 'Enter Username'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'CONTINUE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontFamily: 'monospace'),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Icon(Icons.send)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
