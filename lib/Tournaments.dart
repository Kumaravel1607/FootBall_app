import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football/Constant/color.dart';

class Tournaments extends StatefulWidget {
  Tournaments({Key? key}) : super(key: key);

  @override
  State<Tournaments> createState() => _TournamentsState();
}

class _TournamentsState extends State<Tournaments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //height: 50,
                  width: 80,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  // decoration: BoxDecoration(
                  //     color: white,
                  //     borderRadius: BorderRadius.circular(15),
                  //     boxShadow: [
                  //       BoxShadow(color: grey, spreadRadius: 2, blurRadius: 1)
                  //     ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              child: Image.asset(
                                //  'assets/images/tournament1.png',
                                'assets/images/tournament${index + 1}.png',
                                // height: 100,
                                // width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Align(
                          //   alignment: Alignment.topRight,
                          //   child: Container(
                          //     margin: EdgeInsets.all(8),
                          //     height: 35,
                          //     width: 35,
                          //     decoration: BoxDecoration(
                          //         color: white,
                          //         shape: BoxShape.circle,
                          //         boxShadow: [
                          //           BoxShadow(
                          //               color: grey,
                          //               blurRadius: 1,
                          //               spreadRadius: 1)
                          //         ]),
                          //     child: Center(
                          //       child: Icon(
                          //         Icons.favorite_outline,
                          //         color: Blue,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // Align(
                          //   alignment: Alignment.topCenter,
                          //   child: Container(
                          //     margin: EdgeInsets.all(10),
                          //     child: Text(
                          //       'Oia, Santorini',
                          //       style: TextStyle(
                          //           fontSize: 2,
                          //           fontWeight: FontWeight.w600,
                          //           color: white),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 5),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Text(
                      //         'Explore this magical place in',
                      //         style: TextStyle(
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w600,
                      //             color: black),
                      //       ),
                      //       SizedBox(
                      //         height: 5,
                      //       ),
                      //       Text(
                      //         'Greece',
                      //         style: TextStyle(
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.w700,
                      //             color: black),
                      //       ),
                      //       SizedBox(
                      //         height: 5,
                      //       ),
                      //       Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           Row(
                      //             children: [
                      //               Icon(
                      //                 Icons.location_on_sharp,
                      //                 color: Blue,
                      //               ),
                      //               Text(
                      //                 'Oia, Santorini',
                      //                 style: TextStyle(
                      //                     fontSize: 16,
                      //                     fontWeight: FontWeight.w500,
                      //                     color: black),
                      //               ),
                      //             ],
                      //           ),
                      //           Row(
                      //             children: [
                      //               Icon(
                      //                 Icons.star_border,
                      //                 color: Blue,
                      //               ),
                      //               Text(
                      //                 '4.5',
                      //                 style: TextStyle(
                      //                     fontSize: 16,
                      //                     fontWeight: FontWeight.w500,
                      //                     color: black),
                      //               ),
                      //             ],
                      //           )
                      //         ],
                      //       )
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Permier League',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: greylite),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
