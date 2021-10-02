import 'package:flutter/material.dart';

class CertificatesScreen extends StatelessWidget {
  const CertificatesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            elevation: 2.0,
            borderRadius: BorderRadius.circular(20.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/s1.png',
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            elevation: 2.0,
            borderRadius: BorderRadius.circular(20.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/s2.png',
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            elevation: 2.0,
            borderRadius: BorderRadius.circular(20.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/s3.png',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: ListView(
    //     physics: const BouncingScrollPhysics(),
    //     children: [
    //       Image.asset(
    //         'assets/images/s1.png',
    //       ),
    //       Image.asset(
    //         'assets/images/s1.png',
    //       ),
    //       Image.asset(
    //         'assets/images/s1.png',
    //       ),
    //     ],
    //   ),
    // );
  }
}
