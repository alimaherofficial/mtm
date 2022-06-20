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
              // Row(
              //   children: [
              //     Expanded(
              //       child: Column(
              //         children: [
              //           Image.asset(
              //             'assets/images/ahli.png',
              //           ),
              //           const Text(
              //             'البنك الاهلى المصري',
              //             style: TextStyle(
              //               fontSize: 10.0,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 7.0,
              //     ),
              //     Expanded(
              //       child: Column(
              //         children: [
              //           Image.asset(
              //             'assets/images/arab-contractors.png',
              //           ),
              //           const SizedBox(
              //             height: 20.0,
              //           ),
              //           const Text(
              //             'المقاولون العرب',
              //             style: TextStyle(
              //               fontSize: 10.0,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 7.0,
              //     ),
              //     Expanded(
              //       child: Column(
              //         children: [
              //           const SizedBox(
              //             height: 20.0,
              //           ),
              //           Image.asset(
              //             'assets/images/CPC.png',
              //           ),
              //           const SizedBox(
              //             height: 38.0,
              //           ),
              //           const Text(
              //             'شركة التعاون للبترول',
              //             style: TextStyle(
              //               fontSize: 10.0,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10.0,
              // ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: Column(
              //         children: [
              //           Image.asset(
              //             'assets/images/egyptair.png',
              //           ),
              //           const SizedBox(
              //             height: 10.0,
              //           ),
              //           const Text(
              //             'مصر للطيران',
              //             style: TextStyle(
              //               fontSize: 10.0,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 7.0,
              //     ),
              //     Expanded(
              //       child: Column(
              //         children: [
              //           const SizedBox(
              //             height: 13,
              //           ),
              //           Image.asset(
              //             'assets/images/Movenpick.png',
              //           ),
              //           const SizedBox(
              //             height: 10.0,
              //           ),
              //           const Text(
              //             'فندق موفنبيك',
              //             style: TextStyle(
              //               fontSize: 10.0,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 7.0,
              //     ),
              //     Expanded(
              //       child: Column(
              //         children: [
              //           Image.asset(
              //             'assets/images/ramada.png',
              //           ),
              //           const Text(
              //             'فندق رمادا',
              //             style: TextStyle(
              //               fontSize: 10.0,
              //             ),
              //           ),
              //           const SizedBox(
              //             height: 25.0,
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: Column(
              //         children: [
              //           const SizedBox(
              //             height: 30.0,
              //           ),
              //           Image.asset(
              //             'assets/images/water.png',
              //           ),
              //           const SizedBox(
              //             height: 40.0,
              //           ),
              //           const Text(
              //             'الشركة القابضة لمياة الشرب و الصرف الصحي',
              //             style: TextStyle(
              //               fontSize: 10.0,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 7.0,
              //     ),
              //     Expanded(
              //       child: Column(
              //         children: [
              //           Image.asset(
              //             'assets/images/we.png',
              //           ),
              //           const Text(
              //             'المصرية للاتصالات',
              //             style: TextStyle(
              //               fontSize: 10.0,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //     Expanded(
              //       child: Container(),
              //     ),
              //   ],
              // ),

              // ignore: sized_box_for_whitespace
              Container(
                height: 200,
                child: Row(
                  children: [
                    Expanded(
                      child: Material(
                        color: Colors.white,
                        elevation: 5.0,
                        shadowColor: Colors.black,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/we.png',
                              fit: BoxFit.contain,
                              width: double.infinity,
                              height: 140.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'المصرية للاتصالات',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Material(
                        shadowColor: Colors.black,
                        elevation: 5.0,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/Movenpick.png',
                              fit: BoxFit.contain,
                              width: double.infinity,
                              height: 140.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'فندق موفنبيك',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 200,
                child: Row(
                  children: [
                    Expanded(
                      child: Material(
                        color: Colors.white,
                        elevation: 5.0,
                        shadowColor: Colors.black,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/ahli.png',
                              fit: BoxFit.contain,
                              width: double.infinity,
                              height: 140.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'البنك الأهلى المصرى',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Material(
                        shadowColor: Colors.black,
                        elevation: 5.0,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/ramada.png',
                              fit: BoxFit.contain,
                              width: double.infinity,
                              height: 140.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'فندق رمادا',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 200,
                child: Row(
                  children: [
                    Expanded(
                      child: Material(
                        color: Colors.white,
                        elevation: 5.0,
                        shadowColor: Colors.black,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/water.png',
                              fit: BoxFit.contain,
                              width: double.infinity,
                              height: 140.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'الشركة القابضة لمياة الشرب و الصرف الصحي',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Material(
                        shadowColor: Colors.black,
                        elevation: 5.0,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/egyptair.png',
                              fit: BoxFit.contain,
                              width: double.infinity,
                              height: 140.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'مطار الغردقة الدولى',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 200,
                child: Row(
                  children: [
                    Expanded(
                      child: Material(
                        color: Colors.white,
                        elevation: 5.0,
                        shadowColor: Colors.black,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/CPC.png',
                              fit: BoxFit.contain,
                              width: double.infinity,
                              height: 140.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'التعاون للبترول',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Material(
                        shadowColor: Colors.black,
                        elevation: 5.0,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/arab-contractors.png',
                              fit: BoxFit.contain,
                              width: double.infinity,
                              height: 140.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'المقاولون العرب',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
