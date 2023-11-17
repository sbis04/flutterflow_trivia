// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class RadialGradientContainer extends StatefulWidget {
  const RadialGradientContainer({
    Key? key,
    this.width,
    this.height,
    required this.color1,
    required this.color2,
    required this.step1,
    required this.step2,
    required this.radius,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color color1;
  final Color color2;
  final double step1;
  final double step2;
  final double radius;

  @override
  _RadialGradientContainerState createState() =>
      _RadialGradientContainerState();
}

class _RadialGradientContainerState extends State<RadialGradientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          radius: widget.radius,
          stops: [widget.step1, widget.step2],
          colors: [widget.color1, widget.color2],
        ),
      ),
    );
  }
}
