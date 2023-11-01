import "package:flutter/material.dart";

class FilterItemCard extends StatefulWidget {
  final content;
  final selected;
  FilterItemCard({super.key, required this.content, required this.selected});

  @override
  State<FilterItemCard> createState() => _FilterItemCardState();
}

class _FilterItemCardState extends State<FilterItemCard> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        decoration: BoxDecoration(
          color: widget.selected ? Color(0xFF3d3dd9) : Colors.black12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          widget.content,
          style: TextStyle(
            color: widget.selected ? Colors.white : Colors.black54,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
