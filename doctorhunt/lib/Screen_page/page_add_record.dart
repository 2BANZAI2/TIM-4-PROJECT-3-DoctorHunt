import 'package:doctorhunt/screen_page/page_all_record.dart';
import 'package:flutter/material.dart';

class AddRecord extends StatefulWidget {
  const AddRecord({Key? key}) : super(key: key);

  @override
  State<AddRecord> createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecord> {
  String patientName = 'Abdullah Mamun'; // variabel untuk menyimpan nama pasien

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
                      padding: EdgeInsets.all(2), // Padding around the icon
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios_new),
                        color: Colors.black, // Icon color
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Spacer
                  Text(
                    'Add Records',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset('images/person.png'),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset('images/add.png'),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 500,
                height: 400,
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Record for',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.green,
                                    fontWeight:
                                        FontWeight.bold), // style untuk teks
                                decoration: InputDecoration(
                                  hintText:
                                      'Abdullah Mamun', // hint untuk TextField
                                  hintStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.green,
                                      fontWeight:
                                          FontWeight.bold), // style untuk hint
                                  border: InputBorder
                                      .none, // menghapus border TextField
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.colorize,
                                color: Colors.green,
                              ),
                              onPressed: () {
                                // Tindakan saat tombol kembali ditekan
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Type of record',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.analytics_outlined,
                                    size: 30,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    // Tindakan saat tombol kembali ditekan
                                  },
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Report',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.text_snippet_rounded,
                                    size: 30,
                                    color: Colors.green,
                                  ),
                                  onPressed: () {
                                    // Tindakan saat tombol kembali ditekan
                                  },
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Prescription',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.add_card_rounded,
                                    size: 30,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    // Tindakan saat tombol kembali ditekan
                                  },
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Invoice',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 15),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Record created on',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.green,
                                    fontWeight:
                                        FontWeight.bold), // style untuk teks
                                decoration: InputDecoration(
                                  hintText:
                                      '27 Feb, 2021', // hint untuk TextField
                                  hintStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.green,
                                      fontWeight:
                                          FontWeight.bold), // style untuk hint
                                  border: InputBorder
                                      .none, // menghapus border TextField
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.colorize,
                                color: Colors.green,
                              ),
                              onPressed: () {
                                // Tindakan saat tombol kembali ditekan
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AllRecord(),
                              ),
                              (route) => false,
                            );
                          },
                          child: Container(
                            width: 500,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xff0EBE7F),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'Upload Record',
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
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
