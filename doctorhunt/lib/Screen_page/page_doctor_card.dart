import 'package:doctorhunt/Screen_page/main_layout.dart';
import 'package:doctorhunt/Screen_page/page_help_center.dart';
import 'package:doctorhunt/Screen_page/page_location.dart';
import 'package:doctorhunt/Screen_page/page_login.dart';
import 'package:doctorhunt/Screen_page/page_medicine.dart';
import 'package:doctorhunt/Screen_page/page_privacy_policy.dart';
import 'package:doctorhunt/Screen_page/page_profil.dart';
import 'package:doctorhunt/Screen_page/page_setting.dart';
import 'package:doctorhunt/screen_page/page_medical_record.dart';
// import 'package:doctorhunt/screen_page/page_medical_record.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class Doctor {
  final String imagePath;
  final String doctorName;
  final String specialization;
  final String experience;
  final String percentage;
  final String patientStories;
  final String nextAvailableDate;

  Doctor({
    required this.imagePath,
    required this.doctorName,
    required this.specialization,
    required this.experience,
    required this.percentage,
    required this.patientStories,
    required this.nextAvailableDate,
  });
}

class DoctorCard extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String specialization;
  final String experience;
  final String percentage;
  final String patientStories;
  final String nextAvailable;
  final String date;

  const DoctorCard({
    required this.imagePath,
    required this.doctorName,
    required this.specialization,
    required this.experience,
    required this.percentage,
    required this.patientStories,
    required this.nextAvailable,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            nextAvailable,
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF0EBE7F),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            date,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        doctorName,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        specialization,
                        style:
                            TextStyle(fontSize: 13, color: Color(0xFF0EBE7F)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        experience,
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF0EBE7F),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Text(percentage),
                              ),
                            ],
                          ),
                          SizedBox(width: 40),
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF0EBE7F),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Text(patientStories),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.topRight,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => MedicalRecord()));
                          },
                          child: Text(
                            'Book Now',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF0EBE7F),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton(
                onPressed: () {
                  // Action when love icon is pressed
                },
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red.shade400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrCard extends StatefulWidget {
  @override
  _DrCardState createState() => _DrCardState();
}

class _DrCardState extends State<DrCard> {
  final _advancedDrawerController = AdvancedDrawerController();
  TextEditingController searchController = TextEditingController();
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final String nextAvailable = 'Next Available';
    final String date1 = '10:00 AM Tomorrow';
    final String date2 = '12:00 AM Tomorrow';

    // Option 1: Define a list of Doctor objects
    List<Doctor> doctors = [
      Doctor(
        imagePath: 'images/1.jpeg',
        doctorName: 'Dr. Tranquilli',
        specialization: 'Specialist Medicine',
        experience: '6 Years Experience',
        percentage: '87%',
        patientStories: '69 Patient Stories',
        nextAvailableDate: date1,
      ),
      Doctor(
        imagePath: 'images/2.jpeg',
        doctorName: 'Dr. Bonebrake',
        specialization: 'Specialist Dentist',
        experience: '8 Years Experience',
        percentage: '59%',
        patientStories: '82 Patient Stories',
        nextAvailableDate: date2,
      ),
      Doctor(
        imagePath: 'images/3.jpeg',
        doctorName: 'Dr. Luke Whitesell',
        specialization: 'Specialist Cardiology',
        experience: '7 Years Experience',
        percentage: '57%',
        patientStories: '76 Patient Stories',
        nextAvailableDate: date1,
      ),
      Doctor(
        imagePath: 'images/4.jpeg',
        doctorName: 'Dr. Shoemaker',
        specialization: 'Specialist Patheology',
        experience: '10 Years Experience',
        percentage: '90%',
        patientStories: '100 Patient Stories',
        nextAvailableDate: date1,
      ),
    ];
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff6F7FA1), Color(0xff536184)],
          ),
        ),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      childDecoration: const BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Doctor'),
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.arrow_back_ios,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  TextField(
                    controller: searchController,
                    onChanged: (query) {
                      setState(() {
                        searchQuery = query;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Search Doctor',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  // List of doctors (filtered based on search query)
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: doctors.length,
                    itemBuilder: (context, index) {
                      final doctor = doctors[index];
                      if (searchQuery.isEmpty ||
                          doctor.doctorName
                              .toLowerCase()
                              .contains(searchQuery.toLowerCase())) {
                        return DoctorCard(
                          imagePath: doctor.imagePath,
                          doctorName: doctor.doctorName,
                          specialization: doctor.specialization,
                          experience: doctor.experience,
                          percentage: doctor.percentage,
                          patientStories: doctor.patientStories,
                          nextAvailable: nextAvailable,
                          date: doctor.nextAvailableDate,
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Implementasi logika navigasi saat gambar atau teks ditekan
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            'images/1.jpeg',
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdullah Mamun',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 2),
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '01303-527300',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainLayout()));
                      },
                      child: Icon(
                        Icons.cancel_rounded,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DrCard()));
                },
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  'My Doctors',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MedicalRecord()));
                },
                leading: Icon(
                  Icons.note_add,
                  color: Colors.white,
                ),
                title: Text(
                  'Medical Records',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageLocation()));
                },
                leading: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                title: Text(
                  'locations',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MedicineOrder()));
                },
                leading: Icon(
                  Icons.ballot_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  'Medicine Orders',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PagePrivacyPolicy()));
                },
                leading: Icon(
                  Icons.verified,
                  color: Colors.white,
                ),
                title: Text(
                  'Privacy & Policy',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PageHelpCenter()));
                },
                leading: Icon(
                  Icons.help_center_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  'Help Center',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageSetting()));
                },
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    _showLogoutDialog(context);
                  },
                  icon: Icon(
                    Icons.door_back_door, // Icon exit
                    color: Colors.white, // Warna ikon
                  ),
                  label: Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.transparent, // Menghapus latar belakang tombol
                    shadowColor:
                        Colors.transparent, // Menghapus bayangan tombol
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          content: Container(
            width: 300,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Logout !',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Are you sure you want to logout?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 200,),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'cancel',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                        (route) => false,
                      );
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Ok',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}
