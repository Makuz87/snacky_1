import 'dart:ui';
import 'package:flutter/material.dart';

class CategrorieButtonWidget extends StatelessWidget {
  const CategrorieButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: 40,

          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
          decoration: BoxDecoration(
            // color:
            //     const Color.fromARGB(255, 246, 240, 249),
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withOpacity(0.3),
              width: 1.0,
            ),
          ),
          //
          child: DropdownButton<String>(
            value: 'All categories',
            items: <String>['All categories', 'Salty', 'Sweet', 'Drinks']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(
                        "assets/images/Lunch.png",
                      ),
                      color: Colors.grey,
                      height: 16,
                      width: 16,
                    ),
                    SizedBox(width: 8),
                    Text(value,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
              );
            }).toList(),
            onChanged: (_) {},
            dropdownColor: Colors.white,
            style: TextStyle(color: Colors.black),
            underline: Container(),
          ),
        ),
      ),
    );
  }
}
