import 'package:flutter/material.dart';
import 'package:ui_design/component/colors.dart';

class VideoSection extends StatefulWidget {
  VideoSection({super.key});

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  List videoList = [
    "category",
    "calsses",
    "free cource",
    "Book Store",
    "Live cource",
    "leader Board"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: index == 0 ? purple : purple.withOpacity(0.6),
                shape: BoxShape.circle),
            child: Icon(
              Icons.play_arrow_rounded,
              color: white,
              size: 30,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: Text('20 min 15 sec'),
        );
      },
    );
  }
}
