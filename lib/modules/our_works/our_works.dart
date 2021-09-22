import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:mtm/shared/components/components.dart';
import 'package:mtm/shared/cubit/cubit.dart';

class OurWorksScreen extends StatelessWidget {
  const OurWorksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Conditional.single(
        context: context,
        conditionBuilder: (BuildContext context) =>
            MtmCubit.get(context).ourWorkModellist.isNotEmpty,
        widgetBuilder: (BuildContext context) => ListView.separated(
              itemBuilder: (context, index) {
                return buildwork(
                    MtmCubit.get(context).ourWorkModellist[index], context);
              },
              separatorBuilder: (context, index) => Container(),
              itemCount: MtmCubit.get(context).ourWorkModellist.length,
            ),
        fallbackBuilder: (BuildContext context) =>
            const Center(child: CircularProgressIndicator()));
  }
}
