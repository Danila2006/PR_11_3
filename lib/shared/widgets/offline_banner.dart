import 'package:flutter/material.dart';

class OfflineBanner extends StatelessWidget {
  const OfflineBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: const Text("Offline", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
    );
  }
}