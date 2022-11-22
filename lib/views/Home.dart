import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome',
            style: TextStyle(fontFamily: 'monospace'),
          ),
          bottom: TabBar(
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 45),
            tabs: [
              Tab(
                text: 'Home',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Peers',
                icon: Icon(Icons.person_2_outlined),
              ),
              Tab(
                text: 'Projects',
                icon: Icon(Icons.computer_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                children: [
                  ElevatedButton(onPressed: null, child: Text('click'))
                ],
              ),
            ),
            Center(
              child: Icon(Icons.person),
            ),
            Center(
              child: Icon(Icons.computer),
            ),
          ],
        ),
      ),
    );
  }
}
