import 'package:flutter/material.dart';
import 'package:iconnect_flutter_app/components/Drawer.dart';
import 'package:iconnect_flutter_app/views/Pages/Home.dart';
import 'package:iconnect_flutter_app/views/Pages/Peers.dart';
import 'package:iconnect_flutter_app/views/Pages/Projects.dart';

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
          centerTitle: true,
          toolbarHeight: MediaQuery.of(context).size.height * .12,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(100))),
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
          actions: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Name',
                style: TextStyle(fontFamily: 'monospace'),
              ),
            )
          ],
        ),
        drawer: MyDrawer(),
        body: TabBarView(
          children: [
            HomePage(),
            PeersPage(),
            ProjectsPage(),
          ],
        ),
      ),
    );
  }
}
