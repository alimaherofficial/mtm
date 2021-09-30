import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'شركه MTM خبره اكثر من 12 سنه',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'تاسست شركه MTM سنه ٢٠١٣ وتتميز الشركه بمكانه رائده بين الشركات وهي من اكبر واعرق شركات فهي تجمع دائما بين الاصاله والخبره الطويله وكذلك التطوير واستخدام احدث اساليب التكنولوجيا الحديثة.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'وتحرص الشركه دائما علي تقديم العديد من الخدمات المتميزه وذلك يتم طبقا لمعايير الجوده المطلوبه ،   ولا يتوقف نشاط الشركه فقط علي اعمال معينه   ولكن لدينا المرونة فى التعامل مع العديد من الاختصاصات.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'اهدفنا',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Text(
                '• الرضا التام للعملاء والجهات المعنيه.',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                '• مده التنفيذ واداء الاعمال طبقا للمعاير المطلوبه.',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                '• المحافظه علي سمعتنا في اداء المشروع.',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                '• الحفاظ علي سلامه وصحه العاملين.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'أهم العملاء ',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/ahli.png',
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/arab-contractors.png',
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/CPC.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/egyptair.png',
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/Movenpick.png',
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/ramada.png',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/water.png',
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/we.png',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
