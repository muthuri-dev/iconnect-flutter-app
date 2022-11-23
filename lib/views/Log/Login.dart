import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/assets/seventh.svg'),
            Text('Welcome to the community'),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Username'),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Email'),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            Center(
              child: Text(
               ' error',
                style:
                    const TextStyle(color: Colors.red, fontFamily: 'monospace'),
              ),
            ),
            ElevatedButton(
              onPressed: null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'CONTINUE',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
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
      ],
    );
  }
}
