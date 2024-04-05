import 'package:doctorhunt/screen_page/page_add_record.dart';
import 'package:flutter/material.dart';

class MedicalRecord extends StatefulWidget {
  const MedicalRecord({Key? key}) : super(key: key);

  @override
  State<MedicalRecord> createState() => _MedicalRecordState();
}

class _MedicalRecordState extends State<MedicalRecord> {
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
                    'Medical Record',
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
                    Image.asset('images/illustration.png'),
                    SizedBox(height: 20),
                    Text('Add a medical record.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                    SizedBox(height: 10,),
                    Text('A detailed health history helps a doctor diagnose you btter.')
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
                        _showAddRecordDialog(context);
                      },
                      child: Container(
                        width: 300,
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
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void _showAddRecordDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Add a record',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  // _showVerificationDialog(context);
                },
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.camera_alt_rounded,
                        color: Color(0xff677294),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Take a photo',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff677294),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  // _showVerificationDialog(context);
                },
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.photo,
                        color: Color(0xff677294),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Upload from gallery',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff677294),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
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
                  child: Row(
                    children: [
                      Icon(
                        Icons.upload_file_rounded,
                        color: Color(0xff677294),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Upload files',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff677294),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
