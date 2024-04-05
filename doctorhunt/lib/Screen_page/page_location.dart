import 'package:doctorhunt/Screen_page/page_doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class PageLocation extends StatefulWidget {
  const PageLocation({super.key});

  @override
  State<PageLocation> createState() => _PageLocationState();
}

class _PageLocationState extends State<PageLocation> {
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
                                  builder: (context) => DrCard()));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text('Enable Location Services ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Color(0xff333333))),
                  )
                ],
              ),
              const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Image(
                          image: AssetImage(
                            'images/lokasi.jpg',
                          ),
                          height: 214,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text('Location',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xff222222))),

                        SizedBox(
                          height: 30,
                        ),
                        Text(
                            'Your Location services are switched off .Please enable location ,to help us serve better',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17, color: Color(0xff677294))),
                        //MaterialButton(onPressed: (){},)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 270,
                        height: 54,
                        decoration: BoxDecoration(
                            color: Color(0xff0EBE7F),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            'Enable Location',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xffffffff)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
