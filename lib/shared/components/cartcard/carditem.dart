import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Carditem extends StatelessWidget {
  const Carditem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(children: [
            Container(
              height: 70,
              width: 70,
              margin: EdgeInsets.only(right: 5),
              child: Image.asset("assets/1.png"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Denis Lingo',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'Size L',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '\$200',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Spacer(),
                  Row(
                    children: [
                      //  Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           crossAxisAlignment: CrossAxisAlignment.end,
                      //           children: <Widget>[
                      //             Icon(
                      //               Icons.remove,
                      //               size: 24,
                      //               color: Colors.grey.shade700,
                      //             ),
                      //             Container(
                      //               color: Colors.grey.shade200,
                      //               padding: const EdgeInsets.only(bottom: 2, right: 12, left: 12),
                      //               child: Text(
                      //                 "1",
                      //               ),
                      //             ),
                      //             Icon(
                      //               Icons.add,
                      //               size: 24,
                      //               color: Colors.grey.shade700,
                      //             )
                      //           ],
                      //         ),
                      //       )
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1),
                        ),
                        child: Icon(
                          CupertinoIcons.minus,
                          size: 14,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("1"),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1),
                        ),
                        child: Icon(
                          CupertinoIcons.plus,
                          size: 14,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ]),
        )
      ],
    );
  }
}
