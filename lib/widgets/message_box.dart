import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  final String message;
  const MessageBox({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                message,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}
