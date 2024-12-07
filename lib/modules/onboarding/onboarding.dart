import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screen/modules/login/login.dart';

import '../../models/onboardmodel/onboardmodel.dart';
import '../../shared/components/components.dart';

//done
class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  List<OnboardModel> onboardlist = [
    OnboardModel("assets/1.png", "Find the best", "Fashion Style", "for you",
        "Get exclusive limited appareil than only you have made by famous brands"),
    OnboardModel("assets/2.png", "Define yourself in", "your", "unique way",
        "Get exclusive limited apparel that only you have! Made by famous brands."),
    OnboardModel(
        "assets/3.png",
        "Start discover your",
        "unique fashion",
        "style",
        "Get exclusive limited apparel that only you have! Made by famous brands."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(onboardlist[currentIndex].imgStr),
                  fit: BoxFit.contain)),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                  top: 20,
                  right: 30,
                  child: Row(
                    children: <Widget>[
                      const Text("Skip",
                          style: TextStyle(
                              color: Color(0xff648286), fontSize: 15)),
                      IconButton(
                        iconSize: 35,
                        icon: const Icon(
                          Icons.arrow_circle_right,
                          color: Color(0xff648286),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                      )
                    ],
                  )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: 335,
                  height: 267,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            onboardlist[currentIndex].titleB,
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 24,
                                color: Colors.black),
                          ),
                          RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                TextSpan(
                                    text: onboardlist[currentIndex].titleC,
                                    style: (currentIndex == 1)
                                        ? TextStyle(color: Colors.black)
                                        : TextStyle(color: Color(0xff648286))),
                                TextSpan(
                                    text:
                                        " " + onboardlist[currentIndex].titleB2,
                                    style: (currentIndex == 1)
                                        ? TextStyle(color: Color(0xff648286))
                                        : TextStyle(color: Colors.black)),
                              ])),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black),
                            "Get exclusive limited apparel than omly you have made by famous brands",
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              onboardlist.length,
                              (currentIndex) => buildDot(index: currentIndex),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          defaultButtn(
                              width: 295,
                              title: currentIndex != 2 ? "Next" : "Get Started",
                              function: () {
                                if (currentIndex < onboardlist.length - 1) {
                                  print("work");

                                  setState(() {
                                    currentIndex++;
                                  });
                                } else {
                                  print("wvaw");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                }
                              })
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 7,
      width: currentIndex == index ? 31 : 7,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? Color(0xff648286)
            : Color.fromARGB(255, 0, 0, 0),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
