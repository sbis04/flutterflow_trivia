// Automatic FlutterFlow imports
// Imports other custom widgets
// Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class CircularIndicator extends StatefulWidget {
  const CircularIndicator({
    super.key,
    this.width,
    this.height,
    required this.color,
    required this.thickness,
  });

  final double? width;
  final double? height;
  final Color color;
  final double thickness;

  @override
  _CircularIndicatorState createState() => _CircularIndicatorState();
}

class _CircularIndicatorState extends State<CircularIndicator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(widget.color),
          strokeWidth: widget.thickness,
        ),
      ),
    );
  }
}
