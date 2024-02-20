import 'package:flutter/material.dart';
import 'package:football/Constant/color.dart';

class PopularTicket extends StatefulWidget {
  PopularTicket({Key? key}) : super(key: key);

  @override
  State<PopularTicket> createState() => _PopularTicketState();
}

class _PopularTicketState extends State<PopularTicket> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // height: 290,
                  //width: 200,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: grey, spreadRadius: 1, blurRadius: 1)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              // child: Image.asset(
                              //   'assets/images/stadium4.png',
                              //   // 'assets/images/r${index + 1}.jpeg',
                              //   height: 220,
                              //   width: 180,
                              //   fit: BoxFit.cover,
                              // ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 110,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    'assets/images/team2.png',
                                                    // 'assets/images/r${index + 1}.jpeg',
                                                    height: 50,
                                                    //width: 80,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'Chelsea',
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                        overflow: TextOverflow
                                                            .visible,
                                                        color: black,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    'VS',
                                                    style: TextStyle(
                                                        color: red,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    'assets/images/team3.png',
                                                    // 'assets/images/r${index + 1}.jpeg',
                                                    height: 50,
                                                    // width: 60,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    'Inter Milan ',
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                        overflow: TextOverflow
                                                            .visible,
                                                        color: black,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),

                                          SizedBox(
                                            height: 5,
                                          ),

                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                ' 28 September 2023',
                                                textAlign: TextAlign.center,
                                                maxLines: 2,
                                                style: TextStyle(
                                                    overflow:
                                                        TextOverflow.visible,
                                                    color: greylite,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Text(
                                                ' Emirates Stadium',
                                                textAlign: TextAlign.center,
                                                maxLines: 2,
                                                style: TextStyle(
                                                    overflow:
                                                        TextOverflow.visible,
                                                    color: greylite,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          // SizedBox(
                                          //   height: 10,
                                          // ),

                                          // SizedBox(
                                          //   height: 10,
                                          // ),
                                          // Text(
                                          //   ' Premier League',
                                          //   textAlign: TextAlign.center,
                                          //   maxLines: 2,
                                          //   style: TextStyle(
                                          //       overflow: TextOverflow.visible,
                                          //       color: greylite,
                                          //       fontSize: 16,
                                          //       fontWeight: FontWeight.w500),
                                          // ),
                                          // SizedBox(
                                          //   height: 15,
                                          // ),
                                          // Text(
                                          //   " Tickets From \$ 120",
                                          //   textAlign: TextAlign.center,
                                          //   maxLines: 2,
                                          //   style: TextStyle(
                                          //       overflow: TextOverflow.visible,
                                          //       color: red,
                                          //       fontSize: 16,
                                          //       fontWeight: FontWeight.w700),
                                          // ),
                                          // SizedBox(
                                          //   height: 10,
                                          // ),
                                          // Center(
                                          //   child: SizedBox(
                                          //     width: 120,
                                          //     child: ElevatedButton(
                                          //       style: ElevatedButton.styleFrom(
                                          //         shape: RoundedRectangleBorder(
                                          //             borderRadius:
                                          //                 BorderRadius.circular(10)),
                                          //         backgroundColor: Blue,
                                          //         minimumSize:
                                          //             const Size.fromHeight(34),
                                          //       ),
                                          //       onPressed: () {
                                          //         setState(() {
                                          //           // if (formkey.currentState!.validate()) {
                                          //           //   isloading = true;
                                          //           //   print(isloading);
                                          //           //   user();
                                          //           // }
                                          //         });

                                          //         // if (formkey.currentState!.validate()) {
                                          //         // Navigator.of(context).push(MaterialPageRoute(
                                          //         //     builder: (context) => Navigation()));
                                          //         // } else {}
                                          //       },
                                          //       // child: isloading == true
                                          //       //     ? Container(
                                          //       //         width: 24,
                                          //       //         height: 24,
                                          //       //         padding: const EdgeInsets.all(2.0),
                                          //       //         child: const CircularProgressIndicator(
                                          //       //           color: Colors.white,
                                          //       //           strokeWidth: 3,
                                          //       //         ),
                                          //       //       )
                                          //       //     :
                                          //       child: Text(
                                          //         'Book Now',
                                          //         style: TextStyle(
                                          //           fontSize: 15,
                                          //           fontWeight: FontWeight.w600,
                                          //         ),
                                          //       ),
                                          //     ),
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    color: red,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            ' Premier League',
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            style: TextStyle(
                                                overflow: TextOverflow.visible,
                                                color: white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            " \$ 120",
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            style: TextStyle(
                                                overflow: TextOverflow.visible,
                                                color: white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w900),
                                          ),
                                          SizedBox(
                                            width: 105,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                backgroundColor: white,
                                                minimumSize:
                                                    const Size.fromHeight(34),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  // if (formkey.currentState!.validate()) {
                                                  //   isloading = true;
                                                  //   print(isloading);
                                                  //   user();
                                                  // }
                                                });

                                                // if (formkey.currentState!.validate()) {
                                                // Navigator.of(context).push(MaterialPageRoute(
                                                //     builder: (context) => Navigation()));
                                                // } else {}
                                              },
                                              // child: isloading == true
                                              //     ? Container(
                                              //         width: 24,
                                              //         height: 24,
                                              //         padding: const EdgeInsets.all(2.0),
                                              //         child: const CircularProgressIndicator(
                                              //           color: Colors.white,
                                              //           strokeWidth: 3,
                                              //         ),
                                              //       )
                                              //     :
                                              child: Text(
                                                'Book Now',
                                                style: TextStyle(
                                                  color: red,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
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
                // Padding(
                //   padding: const EdgeInsets.only(left: 15),
                //   child: Text(
                //     'Paris, France',
                //     style: TextStyle(
                //         fontSize: 20,
                //         fontWeight: FontWeight.w400,
                //         color: black),
                //   ),
                // ),
              ],
            );
          }),
    );
  }
}
