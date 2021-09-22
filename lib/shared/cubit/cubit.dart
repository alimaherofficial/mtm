import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtm/models/model.dart';
import 'package:mtm/models/our_work.dart';
import 'package:mtm/modules/about_us/about_us.dart';
import 'package:mtm/modules/certificates/certificates.dart';
import 'package:mtm/modules/our_works/our_works.dart';
import 'package:mtm/modules/products/products.dart';
import 'package:mtm/shared/cubit/states.dart';

class MtmCubit extends Cubit<MtmStates> {
  MtmCubit() : super(MtmInitialState());

  static MtmCubit get(context) => BlocProvider.of(context);

  int currentindex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.people_sharp),
      label: 'About Us',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.assignment_turned_in_sharp),
      label: 'Certificates',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.work),
      label: 'Our Works',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.fire_extinguisher_outlined),
      label: 'Products',
    ),
  ];

  List<Widget> screens = [
    //const ProductsScreen(),
    const AboutUsScreen(),
    const CertificatesScreen(),
    const OurWorksScreen(),
    const ProductsScreen(),
  ];

  // ignore: non_constant_identifier_names
  void ChangeBotoomNavBar(int index) {
    currentindex = index;
    emit(MtmBottomNavState());
  }

  // static Future<List<String>> _getDownloadLinks(List<Reference> refs) =>
  //     Future.wait(refs.map((ref) => ref.getDownloadURL()).toList());

  // static Future<List<FirebaseFile>> listAll(String path) async {
  //   final ref = FirebaseStorage.instance.ref(path);
  //   final result = await ref.listAll();

  //   final urls = await _getDownloadLinks(result.items);

  //   return urls
  //       .asMap()
  //       .map((index, url) {
  //         final ref = result.items[index];
  //         final name = ref.name;
  //         final file = FirebaseFile(ref: ref, name: name, url: url);

  //         return MapEntry(index, file);
  //       })
  //       .values
  //       .toList();
  // }

  List<UserModel> model = [];

  void getData() {
    FirebaseFirestore.instance.collection('products').get().then(
      (value) {
        // ignore: avoid_function_literals_in_foreach_calls
        value.docs.forEach(
          (element) {
            model.add(UserModel.fromJson(element.data()));
          },
        );
        emit(MtmGetDataOk());
      },
    ).catchError(
      (error) {
        emit(MtmGetDataError(error.toString()));
      },
    );
  }

  List<WorkModel> ourWorkModellist = [];

  void getDataOurWork() {
    FirebaseFirestore.instance.collection('ourwork').get().then(
      (value) {
        // ignore: avoid_function_literals_in_foreach_calls
        value.docs.forEach(
          (element) {
            ourWorkModellist.add(WorkModel.fromJson(element.data()));
          },
        );
        emit(MtmGetDataOk());
      },
    ).catchError(
      (error) {
        emit(MtmGetDataError(error.toString()));
      },
    );
  }
}
