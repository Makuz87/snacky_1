import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snacky_1/src/details_bottom_sheet.dart';
import 'package:snacky_1/src/features/order/domain/details.dart';
import 'package:snacky_1/src/features/order/domain/recommendation.dart';
import 'package:snacky_1/src/features/order/presentation/details_widget.dart';
import 'package:snacky_1/src/features/order/presentation/home_page2.dart';
import 'package:snacky_1/src/start_page.dart';

class RecommendWidget extends StatelessWidget {
  final Recommendation recommendation;

  const RecommendWidget({
    super.key,
    required this.recommendation,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            final details = DetailsBottomSheet(recommendation);
            showModalBottomSheet(
              backgroundColor: const Color.fromARGB(255, 34, 34, 34),
              isScrollControlled: true,
              context: context,
              builder: (context) => Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.9,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          DetailsWidget(detailCard: details),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CupertinoSegmentedControl<String>(
                                children: {
                                  "Small": Text("Small"),
                                  "Medium": Text("Medium"),
                                  "Large": Text("Large"),
                                },
                                onValueChanged: (String value) {},
                                groupValue: "Large",
                              ),
                              Row(
                                spacing: 10,
                                children: [
                                  Icon(Icons.remove_circle_outline,
                                      color: Colors.white),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Icon(Icons.add_circle_outline,
                                      color: Colors.white),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton(
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
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.purple, Colors.pinkAccent],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                // alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 64, vertical: 12),
                                child: Text(
                                  "Add to order for €8.99 ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: LinearGradient(
                colors: [Color(0xFF908CF5), Color(0xFF8C5BEA)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Image(
                        image: AssetImage(recommendation.imagePath),
                        height: 130,
                      ),
                    ),
                  ),
                  Text(
                    recommendation.title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    recommendation.description,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        recommendation.price,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(width: 80),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite_border,
                            size: 12,
                          ),
                          Text(
                            recommendation.likes,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
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
