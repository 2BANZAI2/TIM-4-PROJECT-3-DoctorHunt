import 'package:doctorhunt/Screen_page/page_medicine_order.dart';
import 'package:doctorhunt/screen_page/page_add_record.dart';
import 'package:flutter/material.dart';

class MedicineOrder extends StatefulWidget {
  const MedicineOrder({Key? key}) : super(key: key);

  @override
  State<MedicineOrder> createState() => _MedicineOrderState();
}

class _MedicineOrderState extends State<MedicineOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 10), // Spacer
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(15), // Rounded background
                      color:
                          Colors.white, // Background color of the icon button
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8), // Padding around the icon
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios_new),
                        color: Colors.black, // Icon color
                        onPressed: () {
                          // Navigator.pushAndRemoveUntil(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => ThankYou(),
                          //     ),
                          //     (route) => false);
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Spacer
                  Text(
                    'Medicine Order',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Image.asset('images/illustration2.png'),
                    SizedBox(height: 20),
                    Text('No orders placed yet.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                    SizedBox(height: 10,),
                    Text('Place your first order now.')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageDdetailMedicineOrder(),
                      ),
                      (route) => false,
                    );
                      },
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff0EBE7F),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'Order Medicine',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xffFFFFFF)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
