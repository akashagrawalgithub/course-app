import "package:flutter/material.dart";

class Coursehas extends StatefulWidget {
  String textcontent;
  Coursehas({super.key, required this.textcontent});

  @override
  State<Coursehas> createState() => _CoursehasState();
}

class _CoursehasState extends State<Coursehas> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFF3d3dd9),
          ),
          child: Icon(
            Icons.video_call_outlined,
            size: 20,
            color: Color(0xFFFFFFFF),
          ),
        ),
        const SizedBox(width: 15),
        Text(
          widget.textcontent,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
