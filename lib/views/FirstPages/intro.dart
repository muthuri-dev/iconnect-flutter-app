import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:iconnect_flutter_app/views/Log/Login.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Card(
                elevation: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: Column(
                    children: [
                      Image(
                        image: Svg(
                          "lib/assets/third.svg",
                        ),
                        height: MediaQuery.of(context).size.height * .5,
                        width: MediaQuery.of(context).size.width * .7,
                      ),
                      ListTile(
                        title: Text(
                          'IKonnect',
                          style: TextStyle(
                              fontFamily: 'monospace',
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.green),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          ' Platform for connecting developers through sharing their experiences and their thoughts.',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: Column(
                    children: [
                      Image(
                        image: Svg(
                          "lib/assets/sixth.svg",
                        ),
                        height: MediaQuery.of(context).size.height * .5,
                        width: MediaQuery.of(context).size.width * .7,
                      ),
                      Text(
                        'Build',
                        style: TextStyle(
                            fontFamily: 'monospace',
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Have relationship with community peers and know your impact.',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Text(
                      //     ' know your impact',
                      //     style: TextStyle(
                      //       fontFamily: 'monospace',
                      //       fontWeight: FontWeight.normal,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: Column(
                    children: [
                      Image(
                        image: Svg(
                          "lib/assets/eleventh.svg",
                        ),
                        height: MediaQuery.of(context).size.height * .5,
                        width: MediaQuery.of(context).size.width * .7,
                      ),
                      Text(
                        'Sharing with others',
                        style: TextStyle(
                            fontFamily: 'monospace',
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Posting your projects to the platform is the best form of being greateful for what you hve developed.',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        icon: Icon(Icons.start_outlined),
                        label: Text(
                          'Get Started',
                          style: TextStyle(
                              fontFamily: 'monospace', color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * .8,
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.7,
            ),
          ),
        ],
      ),
    );
  }
}
