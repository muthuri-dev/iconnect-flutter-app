import 'package:flutter/material.dart';

import '../../components/waves.dart';

class PeersPage extends StatefulWidget {
  const PeersPage({super.key});

  @override
  State<PeersPage> createState() => _PeersPageState();
}

class _PeersPageState extends State<PeersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: MyWaves(),
        elevation: 0,
      ),
    );
  }
}