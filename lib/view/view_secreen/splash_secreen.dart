import 'package:flutter/material.dart';
import 'package:ui_design/component/colors.dart';
import 'package:ui_design/component/image.dart';
import 'package:ui_design/utils/routes/routes_name.dart';

class SplashSecreen extends StatefulWidget {
  const SplashSecreen({super.key});

  @override
  State<SplashSecreen> createState() => _SplashSecreenState();
}

class _SplashSecreenState extends State<SplashSecreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(color: white),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(
                    color: purple,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                  child: Center(
                    child: Image.asset(
                      ImageResource.splash,
                      scale: 0.8,
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.66,
                decoration: const BoxDecoration(
                  color: purple,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.66,
                padding: const EdgeInsets.only(top: 40, bottom: 30),
                decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Learning is Everything",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          wordSpacing: 2),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "Learning with Pleasure with Dear Programmer, whereverYou are.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Material(
                      color: purple,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.home);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 70),
                          child: const Text(
                            "Get Start",
                            style: TextStyle(
                                color: white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// InkWell(
//                       onTap: () {},
//                       child: Container(
//                         width: MediaQuery.of(context).size.width / 3,
//                         height: MediaQuery.of(context).size.height / 20,
//                         decoration: BoxDecoration(
//                             color: purple,
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Center(
//                           child: Text(
//                             "Get Stated",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 color: white,
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.bold,
//                                 letterSpacing: 1),
//                           ),
//                         ),
//                       ),
//                     )
