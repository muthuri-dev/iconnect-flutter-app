import 'package:flutter/material.dart';
import 'package:iconnect_flutter_app/components/waves.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              elevation: 5,
              shadowColor: Colors.green,
              child: Column(
                children: [
                  Image(
                    image: Svg("lib/assets/eigth.svg"),
                    width: MediaQuery.of(context).size.width * .3,
                  ),
                  Text(
                    'Blogs for tech devs',
                    style: TextStyle(
                        fontFamily: 'monospace',
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      subtitle: Text(
                        'Share your Experience with the community on day-to-day proceedings and technologies you are learning.',
                        style: TextStyle(
                            fontFamily: 'monospace', color: Colors.black),
                      ),
                      trailing: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green),
                        ),
                        onPressed: null,
                        child: Text(
                          'Blogs',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              elevation: 5,
              shadowColor: Colors.green,
              child: Column(
                children: [
                  Image(
                    image: Svg("lib/assets/nineth.svg"),
                    width: MediaQuery.of(context).size.width * .3,
                  ),
                  Text(
                    'Meet Mentors in tech develpment',
                    style: TextStyle(
                        fontFamily: 'monospace',
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      subtitle: Text(
                        'Get guidance from high ranking in the field of tech develpment. Search or add yourself as Mentor.',
                        style: TextStyle(
                            fontFamily: 'monospace', color: Colors.black),
                      ),
                      trailing: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green),
                        ),
                        onPressed: null,
                        child: Text(
                          'Mentors',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              elevation: 5,
              shadowColor: Colors.green,
              child: Column(
                children: [
                  Image(
                    image: Svg("lib/assets/twelveth.svg"),
                    width: MediaQuery.of(context).size.width * .3,
                  ),
                  Text(
                    'Join clubs in tech develpment',
                    style: TextStyle(
                        fontFamily: 'monospace',
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      subtitle: Text(
                        'Explore tecnology field through joining clubs of interest. You can also add a club of interest and view their postings in this page.',
                        style: TextStyle(
                            fontFamily: 'monospace', color: Colors.black),
                      ),
                      trailing: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green),
                        ),
                        onPressed: null,
                        child: Text(
                          'Clubs',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              elevation: 5,
              shadowColor: Colors.green,
              child: Column(
                children: [
                  Image(
                    image: Svg("lib/assets/thirteenth.svg"),
                    width: MediaQuery.of(context).size.width * .3,
                  ),
                  Text(
                    'View solutions to errors in production',
                    style: TextStyle(
                        fontFamily: 'monospace',
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      subtitle: Text(
                        'Get solutions to most frequent error encountered while developing softwares and also get to share yours and the way you solved theme.',
                        style: TextStyle(
                            fontFamily: 'monospace', color: Colors.black),
                      ),
                      trailing: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green),
                        ),
                        onPressed: null,
                        child: Text(
                          'Solutions',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: MyWaves(),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.arrow_upward_outlined),
      ),
    );
  }
}
