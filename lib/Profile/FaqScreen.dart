import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_faq/flutter_faq.dart';
import 'package:football/Constant/color.dart';

class FaqScreen extends StatefulWidget {
  FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 3,
        backgroundColor: red,
        titleSpacing: -2,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.chevron_left, size: 30, color: white)),
        // title: Image.asset(
        //   "assets/images/peslogo.png",
        //   height: 50,
        //   width: 100,
        // ),
        // centerTitle: true,

        title: Text('FAQ',
            style: TextStyle(
              color: white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            )),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ExpansionTileGroup(
              toggleType: ToggleType.expandOnlyCurrent,
              spaceBetweenItem: 16,
              children: [
                ExpansionTileBorderItem(
                  title: Text(
                    "I have just purchased a ticket online, what am I supposed to receive and what will happen next?",
                  ),
                  expendedBorderColor: greytext,
                  children: [
                    Text(
                      "In the next few minutes you will receive an automated e-mail message which means that we have received your order details and it is confirmed. Prior to the event date you will receive another e-mail with all of the details we need to insure the delivery of your tickets. Once the delivery details have been confirmed we will start to deliver your tickets accordingly. Every order is processed right away. Should you have any questions or enquiries, before or after ordering, we would be more than happy to speak with you.",
                    ),
                  ],
                ),
                ExpansionTileBorderItem(
                  title: Text(
                    "Do you only deliver tickets to hotels or can I give you my residential address?",
                  ),
                  expendedBorderColor: greytext,
                  children: [
                    Text(
                      "Depending on what kind of ticket you have purchased we can deliver to any type of address. However if you have purchased tickets that will be in the form or an “Electronic card” then we will only deliver to a hotel address in the event city, as we will need to collect the “electronic cards” back from you after the game. Alternatively we can arrange a meeting / collection point at the venue on the day of the gam",
                    ),
                  ],
                ),
                ExpansionTileBorderItem(
                  title: Text(
                    "What if I have not booked a hotel yet?",
                  ),
                  expendedBorderColor: greytext,
                  children: [
                    Text(
                      "We usually deliver your tickets to your Hotel delivery address, the evening before the event date. The delivery is made by local courier services or by our delivery agents by hand. Please make sure the delivery information provided is correct as we will not be responsible for incorrect addresses.",
                    ),
                  ],
                ),
                ExpansionTileBorderItem(
                  title: Text(
                    "How do I get my tickets?",
                  ),
                  expendedBorderColor: greytext,
                  children: [
                    Text(
                      "We usually deliver your tickets to your Hotel delivery address, the evening before the event date. The delivery is made by local courier services or by our delivery agents by hand. Please make sure the delivery information provided is correct as we will not be responsible for incorrect addresses.",
                    ),
                  ],
                ),
                ExpansionTileBorderItem(
                  title: Text(
                    "Should I inform the hotel that I am expecting a delivery?",
                  ),
                  expendedBorderColor: greytext,
                  children: [
                    Text(
                      "Yes, you should always inform the hotel reception or concierge desk that you are expecting a delivery. Some hotels refuse to accept deliveries for unknown guest names,so you need to make sure the name you have provided us is the same to which you have used to reserve your hotel room.",
                    ),
                  ],
                ),
                ExpansionTileBorderItem(
                  title: Text(
                    "What if I have not booked a hotel yet?",
                  ),
                  expendedBorderColor: greytext,
                  children: [
                    Text(
                      "We usually deliver your tickets to your Hotel delivery address, the evening before the event date. The delivery is made by local courier services or by our delivery agents by hand. Please make sure the delivery information provided is correct as we will not be responsible for incorrect addresses.",
                    ),
                  ],
                ),
              ])
          // Column(children: [
          //   FAQ(
          //     question:
          //         "I have just purchased a ticket online, what am I supposed to receive and what will happen next?",
          //     answer:
          //         "In the next few minutes you will receive an automated e-mail message which means that we have received your order details and it is confirmed. Prior to the event date you will receive another e-mail with all of the details we need to insure the delivery of your tickets. Once the delivery details have been confirmed we will start to deliver your tickets accordingly. Every order is processed right away. Should you have any questions or enquiries, before or after ordering, we would be more than happy to speak with you.",
          //     ansDecoration: BoxDecoration(
          //         // border: Border(top: BorderSide(color: black, width: 1)),
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))
          //         // borderRadius: const BorderRadius.only(
          //         //   bottomRight: Radius.circular(10),
          //         //   bottomLeft: Radius.circular(10),
          //         // ),
          //         ),
          //     queDecoration: BoxDecoration(
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))),
          //     ansStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w500),
          //     queStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w700),
          //   ),
          //   FAQ(
          //     question:
          //         "Do you only deliver tickets to hotels or can I give you my residential address?",
          //     answer:
          //         "Depending on what kind of ticket you have purchased we can deliver to any type of address. However if you have purchased tickets that will be in the form or an “Electronic card” then we will only deliver to a hotel address in the event city, as we will need to collect the “electronic cards” back from you after the game. Alternatively we can arrange a meeting / collection point at the venue on the day of the gam",
          //     ansDecoration: BoxDecoration(
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))),
          //     queDecoration: BoxDecoration(
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))),
          //     ansStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w500),
          //     queStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w700),
          //   ),
          //   FAQ(
          //     question: "What if I have not booked a hotel yet?",
          //     answer:
          //         "If you do not have the hotel details yet, you can still place your order and submit the hotel details at a later stage. In order to ensure delivery this must be done 3 working days prior to the event date. If done after this date we may arrange a venue pick up for your tickets. Our customer service team will stay in touch with you and to ensure safe delivery of your tickets.",
          //     ansDecoration: BoxDecoration(
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))),
          //     queDecoration: BoxDecoration(
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))),
          //     ansStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w500),
          //     queStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w700),
          //   ),
          //   FAQ(
          //     question: "How do I get my tickets?",
          //     answer:
          //         "We usually deliver your tickets to your Hotel delivery address, the evening before the event date. The delivery is made by local courier services or by our delivery agents by hand. Please make sure the delivery information provided is correct as we will not be responsible for incorrect addresses.",
          //     ansDecoration: BoxDecoration(
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))),
          //     queDecoration: BoxDecoration(
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))),
          //     ansStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w500),
          //     queStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w700),
          //   ),
          //   FAQ(
          //     question:
          //         "Should I inform the hotel that I am expecting a delivery?",
          //     answer:
          //         "Yes, you should always inform the hotel reception or concierge desk that you are expecting a delivery. Some hotels refuse to accept deliveries for unknown guest names, so you need to make sure the name you have provided us is the same to which you have used to reserve your hotel room.",
          //     ansDecoration: BoxDecoration(
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))),
          //     queDecoration: BoxDecoration(
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))),
          //     ansStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w500),
          //     queStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w700),
          //   ),
          //   FAQ(
          //     question:
          //         "I am not staying in a hotel or I am staying out of the event city location?",
          //     answer:
          //         "In some cases we will set a central pick-up spot, for customers who have no hotel reservations or their hotel is located outside of the event city. You will receive the full pick-up details by e-mail, if we have to arrange a venue pick up for your tickets. When we say pick up at the venue or venue collection , you still need to get the full instructions from us as to the exact location and time which we will communicated to you by email and over the phone.",
          //     ansDecoration: BoxDecoration(
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))),
          //     queDecoration: BoxDecoration(
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))),
          //     ansStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w500),
          //     queStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w700),
          //   ),
          //   FAQ(
          //     question:
          //         " have received cards and not paper tickets for my event?",
          //     answer: data,
          //     ansDecoration: BoxDecoration(
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))),
          //     queDecoration: BoxDecoration(
          //         color: grey,
          //         borderRadius: const BorderRadius.all(Radius.circular(10))),
          //     ansStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w500),
          //     queStyle: const TextStyle(
          //         color: black, fontSize: 14, fontWeight: FontWeight.w700),
          //   ),
          // ]),

          ),
    );
  }
}

String data = """"
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""";
