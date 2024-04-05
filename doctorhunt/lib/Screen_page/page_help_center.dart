import 'package:doctorhunt/Screen_page/Doctor_screen.dart';
import 'package:doctorhunt/Screen_page/page_diagnostic_test.dart';
import 'package:doctorhunt/Screen_page/page_doctor_card.dart';
import 'package:doctorhunt/Screen_page/page_pasien_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageHelpCenter extends StatefulWidget {
  const PageHelpCenter({super.key});

  @override
  State<PageHelpCenter> createState() => _PageHelpCenterState();
}

class _PageHelpCenterState extends State<PageHelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 45,
                    decoration: BoxDecoration(
                        color: Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(50)),
                    alignment: Alignment.topLeft,
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DrCard(),
                              ));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(' Help Center ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Color(0xff333333))),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1.0,
                              blurRadius: 5.0,
                            ),
                          ]),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            'I have an issue with ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xff0EBE7F)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Booking a new Appointment",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Existing Appointment",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Online consultations",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Feedbacks",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageDoctorScreen()));
                        },
                        child: Text(
                          "Doctor",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageDoctorScreen()));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PagePasienDetail1()));
                        },
                        child: Text(
                          "Patient Tests",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PagePasienDetail1()));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageDiagnostic()));
                        },
                        child: Text(
                          "Diagnostic Tests",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageDiagnostic()));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Health plans",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "My account and Practo Drive",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Have a feature in mind",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
