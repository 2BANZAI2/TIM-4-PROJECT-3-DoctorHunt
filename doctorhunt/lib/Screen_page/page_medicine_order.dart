import 'package:doctorhunt/Screen_page/page_doctor_card.dart';
import 'package:flutter/material.dart';

class PageDdetailMedicineOrder extends StatefulWidget {
  const PageDdetailMedicineOrder({super.key});

  @override
  State<PageDdetailMedicineOrder> createState() => _PageDdetailMedicineOrderState();
}

class _PageDdetailMedicineOrderState extends State<PageDdetailMedicineOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
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
                                  builder: (context) => DrCard()));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text('Medicine Orders',
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
                  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.withOpacity(0.2),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        hintText: 'Search'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
                              SizedBox(
                              ),
                              Container(
                                width: 200,
                                height:
                                    200, // Increased height to accommodate text
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 1.0,
                                      blurRadius: 5.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width:
                                          120, // Adjust the width to fit the image
                                      height:
                                          120, // Adjust the height to fit the image
                                      child: Image.asset('images/logo3.png'),
                                    ),
                                    SizedBox(
                                        height:
                                            10), // Add some space between the image and the text
                                    Center(
                                      child: Text(
                                        'Guide to medicine order', // Replace 'Your Text Here' with the actual text
                                        style: TextStyle(
                                      
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              // Add other logo and text here
                            ],
                          ),

                          SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                              ),
                              Container(
                                width: 200,
                                height:
                                    200, // Increased height to accommodate text
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 1.0,
                                      blurRadius: 5.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width:
                                          120, // Adjust the width to fit the image
                                      height:
                                          120, // Adjust the height to fit the image
                                      child: Image.asset('images/logo4.png'),
                                    ),
                                    SizedBox(
                                        height:
                                            10), // Add some space between the image and the text
                                    Center(
                                      child: Text(
                                        'Prescription related issues', // Replace 'Your Text Here' with the actual text
                                        style: TextStyle(
                                      
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(
                              //   width: 40,
                              // ),
                              // Add other logo and text here
                            ],
                          ),

                          // Add other logo and text here
                        ],
                      ),

                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
                              SizedBox(
                              ),
                              Container(
                                width: 200,
                                height:
                                    200, // Increased height to accommodate text
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 1.0,
                                      blurRadius: 5.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width:
                                          120, // Adjust the width to fit the image
                                      height:
                                          120, // Adjust the height to fit the image
                                      child: Image.asset('images/logo5.png'),
                                    ),
                                    SizedBox(
                                        height:
                                            10), // Add some space between the image and the text
                                    Center(
                                      child: Text(
                                        'Order status', // Replace 'Your Text Here' with the actual text
                                        style: TextStyle(
                                      
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              // Add other logo and text here
                            ],
                          ),

                          SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                              ),
                              Container(
                                width: 200,
                                height:
                                    200, // Increased height to accommodate text
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 1.0,
                                      blurRadius: 5.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width:
                                          120, // Adjust the width to fit the image
                                      height:
                                          120, // Adjust the height to fit the image
                                      child: Image.asset('images/logo6.png'),
                                    ),
                                    SizedBox(
                                        height:
                                            10), // Add some space between the image and the text
                                    Center(
                                      child: Text(
                                        'Order delivery', // Replace 'Your Text Here' with the actual text
                                        style: TextStyle(
                                      
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(
                              //   width: 40,
                              // ),
                              // Add other logo and text here
                            ],
                          ),
                          
                          // Add other logo and text here
                        ],
                      ),
Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
                              SizedBox(
                              ),
                              Container(
                                width: 200,
                                height:
                                    200, // Increased height to accommodate text
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 1.0,
                                      blurRadius: 5.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width:
                                          120, // Adjust the width to fit the image
                                      height:
                                          120, // Adjust the height to fit the image
                                      child: Image.asset('images/logo7.png'),
                                    ),
                                    SizedBox(
                                        height:
                                            10), // Add some space between the image and the text
                                    Center(
                                      child: Text(
                                        'Payments & Refunds', // Replace 'Your Text Here' with the actual text
                                        style: TextStyle(
                                      
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              // Add other logo and text here
                            ],
                          ),

                          SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                              ),
                              Container(
                                width: 200,
                                height:
                                    200, // Increased height to accommodate text
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 1.0,
                                      blurRadius: 5.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width:
                                          120, // Adjust the width to fit the image
                                      height:
                                          120, // Adjust the height to fit the image
                                      child: Image.asset('images/logo8.png'),
                                    ),
                                    SizedBox(
                                        height:
                                            10), // Add some space between the image and the text
                                    Center(
                                      child: Text(
                                        'Order returns', // Replace 'Your Text Here' with the actual text
                                        style: TextStyle(
                                      
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
