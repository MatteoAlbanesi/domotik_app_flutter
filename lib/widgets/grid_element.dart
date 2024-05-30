import 'package:flutter/material.dart';

class GridElement extends StatelessWidget {
  final int index;
  final Function(int index) onPressed;
  final IconData iconData;
  const GridElement({
    super.key,
    required this.index,
    required this.onPressed,
    required this.iconData
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Material(
          child: InkWell( //elemento cliccabile
            onTap: () => onPressed(index),
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Icon(
                iconData,
                color: Colors.black,
                size: 40,
              )
            ),
          ),
        ),
      ),
    );
  }
}
