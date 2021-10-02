// import 'package:firebase_download_example/api/firebase_api.dart';
// import 'package:firebase_download_example/model/firebase_file.dart';
// import 'package:flutter/material.dart';
// import 'package:mtm/shared/cubit/cubit.dart';

// import '../firebase_file.dart';

// class ImagePage extends StatelessWidget {

//   const ImagePage({
//     Key? key,

//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final isImage = ['.jpeg', '.jpg', '.png'].any(file.name.contains);

//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () => Navigator.pop(context),
//           icon: const Icon(Icons.navigate_before),
//           color: Colors.black,
//         ),
//         title: Text(
//           file.name,
//           style: const TextStyle(color: Colors.black),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: const Icon(
//               Icons.file_download,
//               color: Colors.black,
//             ),
//             onPressed: () async {
//               //await MtmCubit.downloadFile(file.ref);

//               final snackBar = SnackBar(
//                 content: Text('Downloaded ${file.name}'),
//               );
//               ScaffoldMessenger.of(context).showSnackBar(snackBar);
//             },
//           ),
//           const SizedBox(width: 12),
//         ],
//       ),
//       body: isImage
//           ? Image.network(
//               file.url,
//               height: double.infinity,
//               fit: BoxFit.contain,
//             )
//           : const Center(
//               child: Text(
//                 'Cannot be displayed',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class OnTap extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final url;
  // ignore: prefer_typing_uninitialized_variables
  final name;
  // ignore: prefer_typing_uninitialized_variables
  final des;
  const OnTap(
      {Key? key, required this.url, required this.name, required this.des})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.navigate_before),
          color: Colors.black,
        ),
        title: Text(
          '$name',
          style: const TextStyle(
            color: Colors.black,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: Image.network(
                    url,
                    errorBuilder: (context, error, stackTrace) => Image.asset(
                      'assets/images/internet.png',
                    ),
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  '$name',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textDirection: TextDirection.rtl,
                  //   overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '$des',
                  style: const TextStyle(fontSize: 16),
                  //maxLines: 9,
                  textDirection: TextDirection.rtl,
                  //   overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
