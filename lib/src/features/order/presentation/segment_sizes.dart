import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegmentSizes extends StatelessWidget {
  const SegmentSizes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 200,
      color: Colors.grey,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // spacing: 4,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Text("Small"),
                ),
              ),
              VerticalDivider(
                indent: 8,
                endIndent: 8,
              ),
              Expanded(
                child: Center(
                  child: Text("Medium"),
                ),
              ),
              Expanded(
                child: Container(
                  child: Center(
                    child: Text("Large"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
