import 'package:flutter/material.dart';
import 'package:football/Constant/color.dart';

class OtherEvents extends StatefulWidget {
  OtherEvents({Key? key}) : super(key: key);

  @override
  State<OtherEvents> createState() => _OtherEventsState();
}

class _OtherEventsState extends State<OtherEvents> {
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
                                    height: 120,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    'Wed',
                                                    style: TextStyle(
                                                        color: red,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                  // Image.asset(
                                                  //   'assets/images/team2.png',
                                                  //   // 'assets/images/r${index + 1}.jpeg',
                                                  //   height: 60,
                                                  //   //width: 80,
                                                  //   fit: BoxFit.cover,
                                                  // ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    '27 Sep 2023',
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
                                                  Column(
                                                    children: [
                                                      Text(
                                                        ' Minnedota Timberwolves',
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 2,
                                                        style: TextStyle(
                                                            overflow:
                                                                TextOverflow
                                                                    .visible,
                                                            color: black,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      Text(
                                                        'vs',
                                                        style: TextStyle(
                                                            overflow:
                                                                TextOverflow
                                                                    .visible,
                                                            color: black,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      Text(
                                                        ' Dallas Mavericks',
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 2,
                                                        style: TextStyle(
                                                            overflow:
                                                                TextOverflow
                                                                    .visible,
                                                            color: black,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ],
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
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    ' 20:00',
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                        overflow: TextOverflow
                                                            .visible,
                                                        color: greylite,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    ' Etihad Arena',
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                        overflow: TextOverflow
                                                            .visible,
                                                        color: greylite,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    '- Emirates',
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                        overflow: TextOverflow
                                                            .visible,
                                                        color: greylite,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 110,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                    backgroundColor: book,
                                                    minimumSize:
                                                        const Size.fromHeight(
                                                            34),
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
                                                      color: white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
