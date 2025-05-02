import 'package:flutter/material.dart';
import 'package:snacky_1/src/home_page.dart';

class AddToCardBtn2 extends StatelessWidget {
  final String title;
  const AddToCardBtn2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
      },
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
              Color(0xFFE970C4),
              Color(0xFFF69EA3)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(90, 246, 158, 224),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 5),
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 64, vertical: 12),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

   
        // Container(
        //   width: 200,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(24),
        //     gradient: LinearGradient(
        //         colors: [Color(0xFF908CF5), Color(0xFF8C5BEA)],
        //         begin: Alignment.topCenter,
        //         end: Alignment.bottomCenter),
        //   ),
        //   child: Padding(
        //     padding: const EdgeInsets.all(12.0),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.all(12.0),
        //           child: Center(
        //             child: Image(
        //               image: AssetImage(
        //                 recommendation.imagePath,
        //               ),
        //               height: 130,
        //             ),
        //           ),
        //         ),
        //         Text(
        //           recommendation.title,
        //           style: TextStyle(
        //             fontSize: 14,
        //             fontWeight: FontWeight.w700,
        //           ),
        //         ),
        //         Text(
        //           recommendation.description,
        //           style: TextStyle(
        //             fontSize: 14,
        //             fontWeight: FontWeight.w300,
        //           ),
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Text(
        //               recommendation.price,
        //               style: TextStyle(
        //                 fontSize: 10,
        //                 fontWeight: FontWeight.w300,
        //               ),
        //             ),
        //             SizedBox(width: 80),
        //             Row(
        //               children: [
        //                 // Todo: noch auslagern!
        //                 Icon(
        //                   Icons.favorite_border,
        //                   size: 12,
        //                 ),
        //                 Text(
        //                   recommendation.likes,
        //                   style: TextStyle(
        //                     fontSize: 10,
        //                     fontWeight: FontWeight.w200,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
//       ],
//     );
//   }
// }
