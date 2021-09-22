import 'package:flutter/material.dart';

class CertificatesScreen extends StatelessWidget {
  const CertificatesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/logo3.png',
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/logo3.png',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/logo3.png',
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/logo3.png',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/logo3.png',
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/logo3.png',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
