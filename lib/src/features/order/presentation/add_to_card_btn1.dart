import 'package:flutter/material.dart';

class AddToCardBtn1 extends StatelessWidget {
  final String title;

  const AddToCardBtn1({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(12),
          width: 152,
          height: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            gradient: LinearGradient(
              colors: [
                Color(0xFFEECBFC),
                Color.fromARGB(255, 201, 105, 234),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            foregroundColor: Colors.transparent,
            backgroundColor: Colors.transparent,
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  // Color.fromARGB(255, 238, 117, 202),
                  Color.fromARGB(253, 201, 141, 225),
                  Color(0xFFF908CF5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(80, 201, 105, 234),
                  spreadRadius: 7,
                  blurRadius: 15,
                  offset: Offset(0, 5),
                )
              ],
            ),
            child: Container(
              width: 150,
              height: 40,
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
