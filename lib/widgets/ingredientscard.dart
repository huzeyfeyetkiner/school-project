import "package:flutter/material.dart";

class IngredientsCard extends StatefulWidget {
  String ingredient;

  IngredientsCard({super.key, required this.ingredient});

  bool isChecked = false;
  @override
  State<IngredientsCard> createState() => _IngredientsCardState();
}

class _IngredientsCardState extends State<IngredientsCard> {
  void toggleCheck() {
    setState(() {
      widget.isChecked = !widget.isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: widget.isChecked ? Colors.green : Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.grey,
          width: 0.3,
        ),
      ),
      child: ListTile(
        title: Text(widget.ingredient),
        trailing: IconButton(
          icon: Icon(
            widget.isChecked
                ? Icons.cancel_outlined // Icons.cancel_outlined
                : Icons.check_circle_outline,
          ),
          onPressed: toggleCheck,
        ),
      ),
    );
  }
}
