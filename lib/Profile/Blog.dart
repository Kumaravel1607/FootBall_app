import 'package:flutter/material.dart';
import 'package:football/Constant/color.dart';
//import 'package:readmore/readmore.dart';

class Blog extends StatefulWidget {
  Blog({Key? key}) : super(key: key);

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: red,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              color: white,
              size: 30,
            )),
        titleSpacing: -2,
        title: RichText(
          text: TextSpan(
              text: 'Latest',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
              children: const <InlineSpan>[
                WidgetSpan(
                    alignment: PlaceholderAlignment.baseline,
                    baseline: TextBaseline.alphabetic,
                    child: SizedBox(width: 10)),
                TextSpan(
                  text: 'Blog',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " LATEST AND GREATEST",
                style: TextStyle(
                    overflow: TextOverflow.visible,
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // height: 290,
                          //width: 200,
                          margin: EdgeInsets.symmetric(vertical: 10),

                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: grey, spreadRadius: 1, blurRadius: 1)
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  child: Container(
                                    //height: 125,
                                    child: Image.asset(
                                      'assets/images/stadium${index + 1}.png',
                                      width: double.infinity,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  // height: 50,
                                  color: white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          " Newcastle United's Return To The Champions League",
                                          maxLines: 2,
                                          style: TextStyle(
                                              overflow: TextOverflow.visible,
                                              color: black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          " It's Newcastle United's first Champions League in two decades",
                                          maxLines: 2,
                                          style: TextStyle(
                                              overflow: TextOverflow.visible,
                                              color: black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          " 20 September 2023",
                                          style: TextStyle(
                                              overflow: TextOverflow.visible,
                                              color: greytext,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        // SizedBox(
                                        //   width: 110,
                                        //   child: ElevatedButton(
                                        //     style:
                                        //         ElevatedButton.styleFrom(
                                        //       shape:
                                        //           RoundedRectangleBorder(
                                        //               borderRadius:
                                        //                   BorderRadius
                                        //                       .circular(
                                        //                           10)),
                                        //       backgroundColor: white,
                                        //       minimumSize:
                                        //           const Size.fromHeight(
                                        //               34),
                                        //     ),
                                        //     onPressed: () {
                                        //       setState(() {
                                        //         // if (formkey.currentState!.validate()) {
                                        //         //   isloading = true;
                                        //         //   print(isloading);
                                        //         //   user();
                                        //         // }
                                        //       });

                                        //       // if (formkey.currentState!.validate()) {
                                        //       // Navigator.of(context).push(MaterialPageRoute(
                                        //       //     builder: (context) => Navigation()));
                                        //       // } else {}
                                        //     },
                                        //     // child: isloading == true
                                        //     //     ? Container(
                                        //     //         width: 24,
                                        //     //         height: 24,
                                        //     //         padding: const EdgeInsets.all(2.0),
                                        //     //         child: const CircularProgressIndicator(
                                        //     //           color: Colors.white,
                                        //     //           strokeWidth: 3,
                                        //     //         ),
                                        //     //       )
                                        //     //     :
                                        //     child: Text(
                                        //       'Book Now',
                                        //       style: TextStyle(
                                        //         color: red,
                                        //         fontSize: 14,
                                        //         fontWeight:
                                        //             FontWeight.w600,
                                        //       ),
                                        //     ),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
