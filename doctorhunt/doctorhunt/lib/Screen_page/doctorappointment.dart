import 'package:doctorhunt/Screen_page/appointmentsetting.dart';
import 'package:flutter/material.dart';

class DoctorAppointment extends StatefulWidget {
  final String image;
  final String doctorName;
  final String specialization;
  final String salary;

  const DoctorAppointment({
    Key? key,
    required this.image,
    required this.doctorName,
    required this.specialization,
    required this.salary,
  }) : super(key: key);

  @override
  State<DoctorAppointment> createState() => _DoctorAppointmentState();
}

class _DoctorAppointmentState extends State<DoctorAppointment> {
  bool isLiked = false;

  TextEditingController controller = TextEditingController();
  TextEditingController contact = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'), // Background image path
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 25,
            left: 55,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Appointment',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 20,
            right: 20,
            child: Card(
              elevation: 2,
              color: Colors.white,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 60, // Adjust the width of the image container
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(3.0),
                                child: Image.asset(
                                  widget.image,
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.doctorName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                widget.specialization,
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 10,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 12,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 12,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 12,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 12,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                    size: 12,
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      const Text(
                                        '\$',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black45,
                                        ),
                                      ),
                                      Text(
                                        '${widget.salary}/hour',
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.black45,
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
                            setState(() {
                              isLiked = !isLiked;
                            });
                          },
                          child: Icon(
                            isLiked ? Icons.favorite : Icons.favorite_border,
                            size: 20,
                            color: isLiked ? Colors.red : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 200,
              left: 30,
            ),
            child: Text(
              "Appointment for",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 225, left: 30, right: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black12),
            ),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Patient Name',
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 285, left: 30, right: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black12),
            ),
            child: TextField(
              controller: contact,
              decoration: const InputDecoration(
                hintText: 'Contact Number',
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
                border: InputBorder.none,
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(
              top: 345,
              left: 30,
            ),
            child: Text(
              "Who is the patient?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          Positioned(
          bottom: 100,
          left: 15,
          right: 10,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildLiveDoctorCard('images/p0.jpeg'),
                _buildLiveDoctorCard('images/p1.jpeg'),
                _buildLiveDoctorCard('images/p2.jpeg'),
                _buildLiveDoctorCard('images/p3.jpeg'),
                _buildLiveDoctorCard('images/p4.jpeg'),
                _buildLiveDoctorCard('images/p5.jpeg'),
              ],
            ),
          ),
        ),
          Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xFF0EBE7F),
              ),
              child: TextButton(
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AppointmentSetting(),
                    ),
                  );
                },
              ),
            ),
          ),
        )

        ],
      ),
    );
  }
}

Widget _buildLiveDoctorCard(String image) {
  return SizedBox(
    height: 120,
    child: Padding(
      padding: const EdgeInsets.only(
          left: 15), // Adjust the padding to create the desired gap
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            5), // Adjust the circular radius to control the roundness of the container
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  image,
                  scale: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
