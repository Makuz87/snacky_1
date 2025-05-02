import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:snacky_1/src/categorie_button_small.dart';

class CategorieButtonSmallWidget extends StatefulWidget {
  final CategorieButtonSmall categorie;

  const CategorieButtonSmallWidget({
    super.key,
    required this.categorie,
  });

  @override
  State<CategorieButtonSmallWidget> createState() =>
      _CategorieButtonSmallWidgetState();
}

class _CategorieButtonSmallWidgetState
    extends State<CategorieButtonSmallWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: 40,
          width: 100,
          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
          decoration: BoxDecoration(
            // color:
            //     const Color.fromARGB(255, 246, 240, 249),
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withOpacity(0.4),
              width: 1.0,
            ),
          ),
          child: Center(
            child: Text(
              widget.categorie.title,
              style: TextStyle(
                  letterSpacing: -0.6,
                  color: const Color.fromARGB(255, 201, 201, 201),
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
