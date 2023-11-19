// Automatic FlutterFlow imports
// Imports other custom widgets
// Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:confetti/confetti.dart';
import 'dart:math' as math;

class ConfettiOverlay extends StatefulWidget {
  const ConfettiOverlay({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  _ConfettiOverlayState createState() => _ConfettiOverlayState();
}

class _ConfettiOverlayState extends State<ConfettiOverlay> {
  late final ConfettiController _topController;

  @override
  void initState() {
    super.initState();

    _topController = ConfettiController(duration: const Duration(seconds: 5));
    _topController.play();
  }

  @override
  void dispose() {
    _topController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConfettiWidget(
        confettiController: _topController,
        blastDirection: math.pi / 2,
        maxBlastForce: 4,
        minBlastForce: 1,
        emissionFrequency: 0.01,
        numberOfParticles: 20,
        gravity: 0.6,
        shouldLoop: true,
        colors: const [
          Colors.white,
          Colors.yellow,
        ],
      ),
    );
  }
}
