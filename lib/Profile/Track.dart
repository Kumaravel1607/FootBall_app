import 'package:flutter/material.dart';
import 'package:football/Constant/color.dart';

class Track extends StatefulWidget {
  Track({Key? key}) : super(key: key);

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  // bool _passVisibility = true;
  TextEditingController firstname = TextEditingController();
  TextEditingController order = TextEditingController();
  TextEditingController email = TextEditingController();
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
                text: 'Track',
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
                    text: 'Order',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
                ]),
          ),
        ),
        body: SingleChildScrollView(
            child: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   'Your Details',
                  //   style: TextStyle(
                  //       color: black, fontSize: 18, fontWeight: FontWeight.w600),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Oder Reference',
                    style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // onChanged: (value) {
                    //   context
                    //       .read<LoginBloc>()
                    //       .add(EmailEvent(value));
                    // },

                    keyboardType: TextInputType.text,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter order reference";
                      }

                      return null;
                    },
                    controller: firstname,
                    autocorrect: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: red, width: 1)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: box),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: red, width: 1),
                        ),
                        contentPadding: const EdgeInsets.only(
                            left: 24, top: 14, bottom: 13),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your order reference",
                        hintStyle: const TextStyle(color: grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.person,
                          color: grey,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // onChanged: (value) {
                    //   context
                    //       .read<LoginBloc>()
                    //       .add(EmailEvent(value));
                    // },

                    keyboardType: TextInputType.text,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter email";
                      }

                      return null;
                    },
                    controller: firstname,
                    autocorrect: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: red, width: 1)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: box),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: red, width: 1),
                        ),
                        contentPadding: const EdgeInsets.only(
                            left: 24, top: 14, bottom: 13),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your Email",
                        hintStyle: const TextStyle(color: grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.person,
                          color: grey,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'First name',
                    style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // onChanged: (value) {
                    //   context
                    //       .read<LoginBloc>()
                    //       .add(EmailEvent(value));
                    // },

                    keyboardType: TextInputType.text,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter first name";
                      }

                      return null;
                    },
                    controller: firstname,
                    autocorrect: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: red, width: 1)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: box),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: red, width: 1),
                        ),
                        contentPadding: const EdgeInsets.only(
                            left: 24, top: 14, bottom: 13),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your First Name",
                        hintStyle: const TextStyle(color: grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.person,
                          color: grey,
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          // side: const BorderSide(
                          //   width: 2,
                          //   color: Blue,
                          // ),
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: book,
                      minimumSize: const Size.fromHeight(44),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      // Navigator.of(context, rootNavigator: true).push(
                      //     MaterialPageRoute(builder: (context) => Service()));
                    },
                    child: Text(
                      'Check Status',
                      style: TextStyle(
                          color: white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ),
        )));
  }
}
