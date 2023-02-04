import 'package:flutter/material.dart';
import 'package:ui_design/component/colors.dart';
import 'package:ui_design/utils/routes/routes_name.dart';
import 'package:ui_design/view/view_secreen/widget/bottom_widget.dart';

class HomeSecreen extends StatelessWidget {
  HomeSecreen({super.key});
  //create a new list
  List catNAmes = [
    "category",
    "calsses",
    "free cource",
    "Book Store",
    "Live cource",
    "leader Board"
  ];
  List<Color> catColors = [
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D61BDFD),
    Color(0xFFFC7C7F),
    Color(0xFFCB84FB),
    Color(0xFF78E667),
    Color(0xFF78E667),
  ];
  List<Icon> catIcons = [
    const Icon(
      Icons.category,
      color: white,
      size: 30,
    ),
    const Icon(
      Icons.video_library,
      color: white,
      size: 30,
    ),
    const Icon(
      Icons.assessment,
      color: white,
      size: 30,
    ),
    const Icon(
      Icons.store,
      color: white,
      size: 30,
    ),
    const Icon(
      Icons.play_circle_fill,
      color: white,
      size: 30,
    ),
    const Icon(
      Icons.emoji_events,
      color: white,
      size: 30,
    )
  ];
  List imaList = [
    "C",
    "Flutter",
    "Python",
    "ReactNative",
  ];
  // List imaList = [
  //   "assets/image/C.png",
  //   "assets/image/Flutter.png",
  //   "assets/image/Python.png",
  //   "assets/image/ReactNative.png",
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 15, right: 15, bottom: 10, left: 15),
              decoration: const BoxDecoration(
                  color: purple,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.dashboard,
                        size: 30,
                        color: white,
                      ),
                      Icon(
                        Icons.notifications,
                        size: 30,
                        color: white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 3, bottom: 15),
                    child: Text(
                      'Hi,programer',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          wordSpacing: 2,
                          color: white),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 5, bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search here...',
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 25,
                            )),
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(children: [
                GridView.builder(
                  itemCount: catNAmes.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 1.1),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: catColors[index], shape: BoxShape.circle),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          catNAmes[index],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: black.withOpacity(0.7)),
                        )
                      ],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Cources',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: purple),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio:
                            (MediaQuery.of(context).size.height - 50 - 25) /
                                (3 * 220),
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.courses,
                              arguments: {'name': imaList[index]});

                          //if single argument pass => arguments: imaList[index]

                          //              Navigator.pushNamed(context, RouteName.ScreenThird,
                          // arguments: {'name': 'Flutter Job'});
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: darkWhite),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  "assets/image/${imaList[index]}.png",
                                  width: 100,
                                  height: 50,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                imaList[index],
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: black.withOpacity(0.7)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "20 Video",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: black.withOpacity(0.5)),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomWidget(),
    );
  }
}
