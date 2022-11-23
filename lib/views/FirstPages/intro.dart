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
                elevation: 5,
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
                      Text(
                        'Connecting with',
                        style: TextStyle(
                            fontFamily: 'monospace',
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.green),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          ' Everyone and everywhere',
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
                elevation: 5,
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
                          'relationship with community and',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          ' know your impact',
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
                elevation: 5,
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
                          'is the best form of being greateful',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'for what we have got.',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green)),
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
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
