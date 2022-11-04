import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ControlSlider extends StatefulWidget {
  const ControlSlider({super.key});

  @override
  State<ControlSlider> createState() => _ControlSliderState();
}


class _ControlSliderState extends State<ControlSlider> {
  double valueSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Slider(
            max: 10,
            min: 0,
            divisions: 10,
            label: valueSlider.round().toString(),
            value: valueSlider,
            onChanged: (value) {
              setState(
                () {
                  valueSlider = value;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
