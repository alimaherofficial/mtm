import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:mtm/shared/components/components.dart';
import 'package:mtm/shared/cubit/cubit.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // late Future<List<FirebaseFile>> futureFiles;

    // futureFiles = MtmCubit.listAll('photo/');

    return Conditional.single(
        context: context,
        conditionBuilder: (BuildContext context) =>
            MtmCubit.get(context).model.isNotEmpty,
        widgetBuilder: (BuildContext context) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Expanded(
                  // ignore: sized_box_for_whitespace
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      // final file = files[index];
                      return buildFile(
                        MtmCubit.get(context).model[index],
                        context,
                      );
                    },
                    separatorBuilder: (context, index) => Container(),
                    itemCount: MtmCubit.get(context).model.length,
                  ),
                ),
              ],
            ),
        fallbackBuilder: (BuildContext context) =>
            const Center(child: CircularProgressIndicator()));
    // return FutureBuilder<List<FirebaseFile>>(
    //   future: null,
    //   builder: (context, snapshot) {
    //     snapshot.connectionState;

    //     switch (snapshot.connectionState) {
    //       case ConnectionState.waiting:
    //         return const Center(child: CircularProgressIndicator());
    //       default:
    //         if (snapshot.hasError) {
    //           return const Center(child: Text('Some error occurred!'));
    //         } else {
    //           final files = snapshot.data!;

    //           return Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               //buildHeader(files.length),
    //               const SizedBox(height: 8),
    //               Expanded(
    //                 // ignore: sized_box_for_whitespace
    //                 child: ListView.separated(
    //                   itemBuilder: (context, index) {
    //                    // final file = files[index];
    //                     return buildFile(MtmCubit.get(context).model[index], context, );
    //                   },
    //                   separatorBuilder: (context, index) => Padding(
    //                     padding: const EdgeInsets.symmetric(horizontal: 15.0),
    //                     child: Container(
    //                       width: double.infinity,
    //                       height: 1.0,
    //                       color: Colors.grey[300],
    //                     ),
    //                   ),
    //                   itemCount: MtmCubit.get(context).model.length,
    //                 ),
    //                 // child: ListView.builder(
    //                 //   itemExtent: 100,
    //                 //   itemCount: files.length,
    //                 //   itemBuilder: (context, index) {
    //                 //     final file = files[index];

    //               ),
    //             ],
    //           );
    //         }
    //     }
    //   },
    // );
  }

  // Widget buildFile(BuildContext context, FirebaseFile file) => InkWell(
  //       onTap: () => Navigator.of(context).push(
  //         MaterialPageRoute(
  //           builder: (context) => ImagePage(file: file),
  //         ),
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.all(10.0),
  //         child: Row(
  //           children: [
  //             Container(
  //               width: 120.0,
  //               height: 120.0,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(10.0),
  //                 image: DecorationImage(
  //                   image: NetworkImage(file.url),
  //                   fit: BoxFit.contain,
  //                 ),
  //               ),
  //             ),
  //             const SizedBox(width: 10),
  //             Expanded(
  //               // ignore: sized_box_for_whitespace
  //               child: Container(
  //                 height: 50.0,
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   mainAxisAlignment: MainAxisAlignment.start,
  //                   // ignore: prefer_const_literals_to_create_immutables
  //                   children: [
  //                     Expanded(
  //                       child: Text(
  //                         file.name,
  //                         style: Theme.of(context).textTheme.bodyText1,
  //                         maxLines: 2,
  //                         overflow: TextOverflow.ellipsis,
  //                       ),
  //                     ),
  //                     const Text(
  //                       'ali maher is a good boy for doing this app ali maher is a good boy for doing this app ali maher is a good boy for doing this app ali maher is a good boy for doing this app ali maher is a good boy for doing this app ali maher is a good boy for doing this app ',
  //                       style: TextStyle(
  //                         color: Colors.grey,
  //                       ),
  //                       maxLines: 2,
  //                       overflow: TextOverflow.ellipsis,
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     );

  // ListTile(
  //       leading: Image.network(
  //         file.url,
  //         width: 50,
  //         height: 50,
  //         fit: BoxFit.cover,
  //       ),
  //       title: Text(
  //         file.name,
  //         style: const TextStyle(
  //           fontWeight: FontWeight.bold,
  //           overflow: TextOverflow.ellipsis,
  //           color: Colors.black,
  //         ),
  //       ),
  //       onTap: () => Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => ImagePage(file: file),
  //       )),
  //     );

  // Widget buildHeader(int length) => ListTile(
  //       tileColor: Colors.blue,
  //       // ignore: sized_box_for_whitespace
  //       leading: Container(
  //         width: 52,
  //         height: 52,
  //         child: const Icon(
  //           Icons.file_copy,
  //           color: Colors.black,
  //         ),
  //       ),
  //       title: Text(
  //         '$length Files',
  //         style: const TextStyle(
  //           fontWeight: FontWeight.bold,
  //           fontSize: 20,
  //           color: Colors.white,
  //         ),
  //       ),
  //     );

}
