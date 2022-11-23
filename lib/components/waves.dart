import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class MyWaves extends StatelessWidget {
  const MyWaves({super.key});

  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      config: CustomConfig(
            gradients: [
              [Colors.green, Colors.lightGreen]
            ],
            durations: [3500],
            heightPercentages: [0.3],
          ),
          size: Size(double.infinity, 100),
    );
  }
}