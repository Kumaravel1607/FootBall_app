import 'package:flutter/material.dart';
import 'package:football/Constant/color.dart';

class Sell_page extends StatefulWidget {
  Sell_page({Key? key}) : super(key: key);

  @override
  State<Sell_page> createState() => _Sell_pageState();
}

class _Sell_pageState extends State<Sell_page> {
  String? _chosenValue1;
  String? _chosenbrand;
  String? _chosenmodel;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  // bool _passVisibility = true;
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController company = TextEditingController();

  TextEditingController pin = TextEditingController();

  // bool _isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: red,
          elevation: 2,
          // titleSpacing: 10,
          title: RichText(
            text: TextSpan(
                text: 'Sell ',
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
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: formkey,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Details',
                    style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
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
                    height: 10,
                  ),
                  Text(
                    'Last Name',
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
                        return "Please enter last name";
                      }

                      return null;
                    },
                    controller: lastname,
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
                        hintText: "Enter your Last Name",
                        hintStyle: const TextStyle(color: grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.person,
                          color: grey,
                        )),
                  ),
                  SizedBox(
                    height: 10,
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
                    controller: email,
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
                        hintText: "Enter your email",
                        hintStyle: const TextStyle(color: grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: grey,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Mobile No',
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
                        return "Please enter mobile no";
                      }

                      return null;
                    },
                    controller: phone,
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
                        hintText: "Enter your Phone number",
                        hintStyle: const TextStyle(color: grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: grey,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Company',
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
                        return "Please enter door no";
                      }

                      return null;
                    },
                    controller: company,
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
                        hintText: "Enter your company",
                        hintStyle: const TextStyle(color: grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.business,
                          color: grey,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Locality',
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
                        return "Please enter address";
                      }

                      return null;
                    },
                    controller: address,
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
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: red, width: 1),
                        ),
                        contentPadding: const EdgeInsets.only(
                            left: 24, top: 14, bottom: 13),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your address",
                        hintStyle: const TextStyle(color: grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.public_outlined,
                          color: grey,
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'City',
                    style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(left: 20, top: 14, right: 20),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: grey),
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: red),
                            borderRadius: BorderRadius.circular(5)),
                        hintText: 'City',
                        // hintText: 'Date-Month-Year',

                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal),
                        focusedErrorBorder: new OutlineInputBorder(
                          borderSide: BorderSide(color: red, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        errorBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(color: red, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      // border: OutlineInputBorder(
                      //   borderRadius: const BorderRadius.all(
                      //     const Radius.circular(10),
                      //   ),
                      // ),
                      //               ),
                      // decoration: InputDecoration(
                      //   enabledBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(
                      //         color: Colors.grey, width: 1), //<-- SEE HERE
                      //   ),
                      //   focusedBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(
                      //         color: Colors.black, width: 2), //<-- SEE HERE
                      //   ),
                      //   filled: true,
                      //   // fillColor: Colors.greenAccent,
                      // ),

                      // dropdownColor: greylite,
                      value: _chosenValue1,
                      onChanged: (value) {
                        setState(() {
                          _chosenValue1 = value;
                        });
                      },
                      items: <String>[
                        'Chennai',
                        'Dharmapuri',
                        'Salem',
                        'Krishnagiri',
                        'Erode',
                        'Coimbatore',
                        'Namakkal'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'State',
                    style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(left: 20, top: 14, right: 20),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: grey),
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: red),
                            borderRadius: BorderRadius.circular(5)),
                        hintText: 'Select State',
                        // hintText: 'Date-Month-Year',

                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal),
                        focusedErrorBorder: new OutlineInputBorder(
                          borderSide: BorderSide(color: red, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(color: red, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      // border: OutlineInputBorder(
                      //   borderRadius: const BorderRadius.all(
                      //     const Radius.circular(10),
                      //   ),
                      // ),
                      //               ),
                      // decoration: InputDecoration(
                      //   enabledBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(
                      //         color: Colors.grey, width: 1), //<-- SEE HERE
                      //   ),
                      //   focusedBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(
                      //         color: Colors.black, width: 2), //<-- SEE HERE
                      //   ),
                      //   filled: true,
                      //   // fillColor: Colors.greenAccent,
                      // ),

                      //dropdownColor: greylite,
                      value: _chosenbrand,
                      onChanged: (value) {
                        setState(() {
                          _chosenbrand = value;
                        });
                      },
                      items: <String>[
                        'Tamilnadu',
                        'Karnataka',
                        'Kerala',
                        'Telugana',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Select Country',
                    style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(left: 20, top: 14, right: 20),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: grey),
                            borderRadius: BorderRadius.circular(5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: red),
                            borderRadius: BorderRadius.circular(5)),
                        hintText: 'Select Country',
                        // hintText: 'Date-Month-Year',

                        hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal),
                        focusedErrorBorder: new OutlineInputBorder(
                          borderSide: BorderSide(color: red, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(color: red, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      // border: OutlineInputBorder(
                      //   borderRadius: const BorderRadius.all(
                      //     const Radius.circular(10),
                      //   ),
                      // ),
                      //               ),
                      // decoration: InputDecoration(
                      //   enabledBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(
                      //         color: Colors.grey, width: 1), //<-- SEE HERE
                      //   ),
                      //   focusedBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(
                      //         color: Colors.black, width: 2), //<-- SEE HERE
                      //   ),
                      //   filled: true,
                      //   // fillColor: Colors.greenAccent,
                      // ),

                      //dropdownColor: greylite,
                      value: _chosenmodel,
                      onChanged: (value) {
                        setState(() {
                          _chosenmodel = value;
                        });
                      },
                      items: <String>[
                        'India',
                        'Pakisthan',
                        'China',
                        'Bangalesh',
                        'Sri Lanka'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Pincode',
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
                        return "Please enter pincode";
                      }

                      return null;
                    },
                    controller: pin,
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
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: red, width: 1),
                        ),
                        contentPadding: const EdgeInsets.only(
                            left: 24, top: 14, bottom: 13),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your Pincode",
                        hintStyle: const TextStyle(color: grey, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.public_outlined,
                          color: grey,
                        )),
                  ),
                  SizedBox(
                    height: 30,
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
                      'Apply now',
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
