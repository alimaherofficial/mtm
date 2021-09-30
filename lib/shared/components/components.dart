import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtm/models/model.dart';
import 'package:mtm/models/our_work.dart';
import 'package:mtm/page/image_page.dart';

Widget buildFile(
  UserModel a,
  BuildContext context,
) =>
    InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OnTap(
              url: '${a.imageurl}',
              name: a.name,
              des: a.description,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Material(
          elevation: 5,
          shadowColor: Colors.red,
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          child: Row(
            children: [
              Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  image: DecorationImage(
                    // image: NetworkImage(file.url),
                    image: NetworkImage('${a.imageurl}'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 70.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Expanded(
                        child: Text(
                          '${a.name}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        '${a.description}',
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

Widget buildwork(
  WorkModel w,
  BuildContext contextx,
) =>
    Padding(
      padding: const EdgeInsets.all(15.0),
      // ignore: sized_box_for_whitespace
      child: Container(
        height: 200,
        child: Row(
          children: [
            Expanded(
              child: Material(
                elevation: 5.0,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(20.0),
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage('${w.imageurl1}'),
                      fit: BoxFit.contain,
                      width: double.infinity,
                      height: 140,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${w.name1}',
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
                borderRadius: BorderRadius.circular(20.0),
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage('${w.imageurl2}'),
                      fit: BoxFit.contain,
                      width: double.infinity,
                      height: 140,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${w.name2}',
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
    );
