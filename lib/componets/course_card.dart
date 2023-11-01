import "package:flutter/material.dart";

class CourseCard extends StatefulWidget {
  String url;
  CourseCard({super.key, required this.url});

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 120,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Image.network(
        widget.url,
        fit: BoxFit.cover,
      ),
    );
  }
}
