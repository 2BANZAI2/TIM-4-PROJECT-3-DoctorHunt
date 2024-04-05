import 'package:doctorhunt/Screen_page/page_add_record.dart';
import 'package:doctorhunt/Screen_page/page_doctor_card.dart';
import 'package:flutter/material.dart';

class AllRecord extends StatefulWidget {
  const AllRecord({Key? key}) : super(key: key);

  @override
  State<AllRecord> createState() => _AllRecordState();
}

class _AllRecordState extends State<AllRecord> {
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
            children: [
              Row(children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DrCard(),
                      ),
                      (route) => false,
                    );
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'All Records',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )
              ]),
              Positioned(
                top: 60,
                left: 20,
                child: Column(
                  children: [
                    _buildCard(
                        '27', 'FEB', 'Record for Abdullah mamun'), // Card 1
                    SizedBox(height: 20),
                    _buildCard(
                        '28', 'FEB', 'Record for Abdullah shuvo'), // Card 2
                    SizedBox(height: 20),
                    _buildCard('1', 'MAR', 'Record for Shruti Kedia'), // Card 3
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddRecord(),
                    ),
                    (route) => false,
                  );
                },
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xff0EBE7F),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Add a record',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xffFFFFFF)),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCard(String day, String month, String recordText) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 450,
        height: 135,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Color(0xff0EBE7F),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Text(
                            day,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            month,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Records added by you',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          recordText, // Menggunakan parameter yang diterima
                          style: TextStyle(fontSize: 12, color: Colors.green),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '1 Prescription', // Ditambahkan di sini
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 65,
                      height: 23,
                      decoration: BoxDecoration(
                        color: Color(0xff0EBE7F1A),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'NEW',
                            style: TextStyle(
                              color: Colors.green,
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
        ),
      ),
    );
  }
}
