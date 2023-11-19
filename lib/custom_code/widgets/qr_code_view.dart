// Automatic FlutterFlow imports
// Imports other custom widgets
// Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:qr_flutter/qr_flutter.dart';

class QrCodeView extends StatefulWidget {
  const QrCodeView({
    super.key,
    this.width,
    this.height,
    this.color,
    required this.data,
  });

  final double? width;
  final double? height;
  final Color? color;
  final String data;

  @override
  _QrCodeViewState createState() => _QrCodeViewState();
}

class _QrCodeViewState extends State<QrCodeView> {
  @override
  Widget build(BuildContext context) {
    final color = widget.color ?? Colors.black;
    return Container(
      width: widget.width,
      height: widget.height,
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        border: Border.all(
          color: color,
          width: 2,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: color,
            width: 4,
          ),
        ),
        child: QrImageView(
          data: widget.data,
          version: QrVersions.auto,
          eyeStyle: QrEyeStyle(
            color: color,
            eyeShape: QrEyeShape.circle,
          ),
          dataModuleStyle: QrDataModuleStyle(
            dataModuleShape: QrDataModuleShape.square,
            color: color,
          ),
        ),
      ),
    );
  }
}
