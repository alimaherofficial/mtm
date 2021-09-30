import 'package:flutter/material.dart';

class CertificatesScreen extends StatelessWidget {
  const CertificatesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Image.asset(
            'assets/images/s1.png',
          ),
          Image.asset(
            'assets/images/s1.png',
          ),
          Image.asset(
            'assets/images/s1.png',
          ),
        ],
      ),
    );
  }
}
