import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtm/shared/cubit/cubit.dart';
import 'package:mtm/shared/cubit/states.dart';

class MtmLayout extends StatelessWidget {
  const MtmLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MtmCubit()..getData()..getDataOurWork(),
      child: BlocConsumer<MtmCubit, MtmStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          var cubit = MtmCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentindex,
              onTap: (index) {
                cubit.ChangeBotoomNavBar(index);
              },
              items: cubit.bottomItems,
            ),
            body: cubit.screens[cubit.currentindex],
          );
        },
      ),
    );
  }
}
