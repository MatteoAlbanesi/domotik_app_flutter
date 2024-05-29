import 'package:flutter/material.dart';

class GridElement extends StatelessWidget {
  final IconData iconData;
  const GridElement({super.key,required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
      ),
      child: Icon(
        iconData,
        color: Colors.black,
      )
    );
  }
}
