import "package:course_selling/utils/userimagelist.dart";
import "package:flutter/material.dart";

class UserImage extends StatefulWidget {
  int idex;
  UserImage({super.key, required this.idex});

  @override
  State<UserImage> createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: ClipOval(
        child: Image.network(userimagelist[widget.idex]),
      ),
    );
  }
}
