import 'package:flutter/material.dart';
import 'package:ui_design/component/colors.dart';
import 'package:ui_design/view/view_secreen/widget/description_section.dart';
import 'package:ui_design/view/view_secreen/widget/video_section.dart';

class CoursesSecreen extends StatefulWidget {
  dynamic img;
  CoursesSecreen({super.key, required this.img});

  @override
  State<CoursesSecreen> createState() => _CoursesSecreenState();
}

class _CoursesSecreenState extends State<CoursesSecreen> {
  bool isvideosSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: white,
        elevation: 0,
        title: Text(
          widget.img['name'],
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: purple,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  color: darkWhite,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/image/${widget.img['name']}.png'))),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(color: white, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    color: purple,
                    size: 35,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Flutter Courses Complete',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Created By Dear Programmer',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: black.withOpacity(0.7)),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '35 Video',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: black.withOpacity(0.5)),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                  color: darkWhite, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isvideosSection ? purple : purple.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isvideosSection = true;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: const Text(
                          'Videos',
                          style: TextStyle(
                              color: white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isvideosSection ? purple.withOpacity(0.6) : purple,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isvideosSection = false;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        child: const Text(
                          'Description',
                          style: TextStyle(
                              color: white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //we will create 2 different section for video section and discription section
            SizedBox(
              height: 10,
            ),
            isvideosSection ? VideoSection() : DescriptionSection()
          ],
        ),
      ),
    );
  }
}


// class CoursesSecreen extends StatelessWidget {
//   dynamic img;
//   bool isvideosSection = false;
//   CoursesSecreen({super.key, required this.img});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         foregroundColor: black,
//         backgroundColor: white,
//         elevation: 0,
//         title: Text(
//           img['name'],
//           style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
//         ),
//         centerTitle: true,
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 10),
//             child: Icon(
//               Icons.notifications,
//               size: 28,
//               color: purple,
//             ),
//           )
//         ],
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//         child: ListView(
//           children: [
//             Container(
//               padding: EdgeInsets.all(5),
//               width: MediaQuery.of(context).size.width,
//               height: 200,
//               decoration: BoxDecoration(
//                   color: darkWhite,
//                   borderRadius: BorderRadius.circular(20),
//                   image: DecorationImage(
//                       image: AssetImage('assets/image/${img['name']}.png'))),
//               child: Center(
//                 child: Container(
//                   padding: EdgeInsets.all(10),
//                   decoration:
//                       BoxDecoration(color: white, shape: BoxShape.circle),
//                   child: const Icon(
//                     Icons.play_arrow_rounded,
//                     color: purple,
//                     size: 35,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             const Text(
//               'Flutter Courses Complete',
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             Text(
//               'Created By Dear Programmer',
//               style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                   color: black.withOpacity(0.7)),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             Text(
//               '35 Video',
//               style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.w500,
//                   color: black.withOpacity(0.5)),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//               decoration: BoxDecoration(
//                   color: darkWhite, borderRadius: BorderRadius.circular(10)),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Material(
//                     color: isvideosSection ? purple : purple.withOpacity(0.5),
//                     borderRadius: BorderRadius.circular(10),
//                     child: InkWell(
//                       onTap: () {
//                         // setState(() {});
//                       },
//                       child: Container(
//                         padding:
//                             EdgeInsets.symmetric(vertical: 15, horizontal: 35),
//                         child: Text(
//                           'Videos',
//                           style: TextStyle(
//                               color: white,
//                               fontSize: 22,
//                               fontWeight: FontWeight.w500),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Material(
//                     color: purple,
//                     borderRadius: BorderRadius.circular(10),
//                     child: InkWell(
//                       onTap: () {},
//                       child: Container(
//                         padding:
//                             EdgeInsets.symmetric(vertical: 15, horizontal: 20),
//                         child: Text(
//                           'Description',
//                           style: TextStyle(
//                               color: white,
//                               fontSize: 22,
//                               fontWeight: FontWeight.w500),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
