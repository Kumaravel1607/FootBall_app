import 'package:flutter/material.dart';
import 'package:football/Constant/color.dart';
import 'package:football/Tickets/fbtickets.dart';
import 'package:football/Tickets/otherevents.dart';
import 'package:football/Tickets/popularticket.dart';

class Ticket extends StatefulWidget {
  Ticket({Key? key}) : super(key: key);

  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: red,
        elevation: 2,
        // titleSpacing: 10,
        title: RichText(
          text: TextSpan(
              text: 'Book ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
              children: <TextSpan>[
                TextSpan(
                  text: 'Tickets',
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
            color: white,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    child: Card(
                      color: greylite,
                      elevation: 2,
                      // height: 50,
                      child: TabBar(
                        //  indicatorPadding: EdgeInsets.all(10),
                        controller: tabController,
                        indicator: ShapeDecoration(
                            color: red,
                            //   shape: StadiumBorder(),
                            // ),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.all(
                                    new Radius.circular(5)))),
                        // color: Color.fromARGB(255, 109, 179, 236)),
                        // color: Colors.indigo,
                        unselectedLabelColor: black,
                        labelColor: white,
                        labelStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                        tabs: [
                          Row(children: [
                            Icon(
                              Icons.sports_baseball_rounded,
                              //  color: black,
                              // size: 25,
                            ),
                            SizedBox(width: 5),
                            Text("Football")
                          ]),

                          Row(children: [
                            Icon(
                              Icons.sports_basketball,
                              // color: black,
                              size: 25,
                            ),

                            //SizedBox(width: 5),
                            Text("Popular")
                          ]),

                          // Tab(text: 'Round Trip'),
                          Row(children: [
                            Icon(
                              Icons.sports_cricket,
                              //color: black,
                              size: 25,
                            ),
                            SizedBox(width: 5),
                            Text("Others")
                          ]),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 1,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        FootballTicket(),
                        PopularTicket(),
                        OtherEvents()
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
