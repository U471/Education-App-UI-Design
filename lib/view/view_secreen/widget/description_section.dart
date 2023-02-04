import 'package:flutter/material.dart';
import 'package:ui_design/component/colors.dart';

class DescriptionSection extends StatefulWidget {
  DescriptionSection({super.key});

  @override
  State<DescriptionSection> createState() => _DescriptionSectionState();
}

class _DescriptionSectionState extends State<DescriptionSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(
              color: black.withOpacity(0.7),
              fontSize: 16,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Course length:',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.timer,
                color: purple,
              ),
              SizedBox(width: 5),
              Text(
                '26 hours',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Rating:',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              SizedBox(width: 5),
              Text(
                '4.5',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}
