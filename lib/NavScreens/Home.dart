import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:football/Constant/color.dart';
import 'package:football/Events.dart';
import 'package:football/Tournaments.dart';

class Home_page extends StatefulWidget {
  Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List<String> banner = [
    'assets/images/stadium4.png',
    'assets/images/stadium5.png',
    'assets/images/stadium6.png'
  ];

  // Image(
  //   image: AssetImage(
  //     'assets/images/stadium4.png',
  //   ),
  // ),
  // Image(
  //   image: AssetImage('assets/images/stadium5.png'),
  // ),
  // Image(
  //   image: AssetImage('assets/images/stadium6.png'),
  // ),
  //];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: red,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            /* Clear the search field */
                          },
                        ),
                        hintText: 'Search by teams,artist,event..,',
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: banner_carousel(),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  // style: TextStyle(color: Colors.black, fontSize: 36),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Popular ',
                        style: TextStyle(
                            color: red,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                    TextSpan(
                        text: 'Tournaments',
                        style: TextStyle(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))
                  ],
                ),
                // textScaleFactor: 0.5,
              ),
              SizedBox(
                height: 10,
              ),
              Tournaments(),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  // style: TextStyle(color: Colors.black, fontSize: 36),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Popular ',
                        style: TextStyle(
                            color: red,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                    TextSpan(
                        text: 'Events',
                        style: TextStyle(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))
                  ],
                ),
                // textScaleFactor: 0.5,
              ),
              SizedBox(
                height: 10,
              ),
              Events()
            ],
          ),
        ),
      ),
    );
  }

  Widget banner_carousel() => Container(
        child: CarouselSlider.builder(
            options: CarouselOptions(
              height: 200,
              viewportFraction: 1.0,
              // aspectRatio: 2.0,
              autoPlay: true,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayCurve: Curves.easeInCubic,
              enlargeCenterPage: false,
              reverse: false,
            ),
            itemCount: banner.length,
            itemBuilder: (context, index, int) {
              return Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(banner[index]),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Positioned(
                            top: 80,
                            left: 20,
                            child: Column(
                              children: [
                                Text('Tickets at Best Price',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('With no Hidden fees',
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          )
                        ],
                      ));
                },
              );
            }),
      );
}
