import 'package:doctorhunt/Screen_page/selectTime.dart';
import 'package:flutter/material.dart';

class FindDoctor extends StatefulWidget {
  const FindDoctor({Key? key}) : super(key: key);

  @override
  State<FindDoctor> createState() => _FindDoctorState();
}

class _FindDoctorState extends State<FindDoctor> {
  bool isLiked = false;
  late TextEditingController _findController;

  @override
  void initState() {
    super.initState();
    _findController = TextEditingController();
  }

  @override
  void dispose() {
    _findController.dispose();
    super.dispose();
  }

  Widget doctorCard(
      String image,
      String doctorName,
      String specialization,
      String experience,
      String percentage,
      String patientStories,
      String available,
      String location) {
    return Card(
      elevation: 2,
      color: Colors.white,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70, // Adjust the width of the image container
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(3.0),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Next Available',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            available,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 7,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            'Tomorrow',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 7,
                            ),
                          ),
                        ],
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
                        doctorName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align text to the start (left)
                        children: [
                          Text(
                            specialization,
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            experience,
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(Icons.circle,
                              size: 10, color: Colors.greenAccent),
                          const SizedBox(width: 4),
                          Text(
                            percentage,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(Icons.circle,
                              size: 10, color: Colors.greenAccent),
                          const SizedBox(width: 4),
                          Text(
                            patientStories,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
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
                    size: 15,
                    color: isLiked ? Colors.red : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectTime(
                      image:
                          image, // Replace 'image_path_here' with the actual image path
                      doctorName:
                          doctorName, // Replace 'doctor_name_here' with the actual doctor name
                      location:
                          location
                    ),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.greenAccent.shade700),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              child: const Text('Book Now'),
            ),
          ),
        ],
      ),
    );
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
                fit: BoxFit
                    .fill, // Adjust the image's size to cover the whole screen
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
                  // Centering the back button icon vertically
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
                'Find Doctors',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                controller: _findController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                  ),
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    iconSize: 20, // Adjust the size as needed
                    onPressed: () {
                      setState(() {
                        _findController.clear();
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 160,
            bottom: 6,
            child: ListView(
              children: [
                doctorCard(
                  'images/1.jpeg',
                  'dr. Mila Claudia',
                  'Paediatrician',
                  '5 years of experience',
                  '98%',
                  '1500 patient stories',
                  '7:00 AM',
                  'St. Anthony Children\'s Hospital', // Hospital location
                ),
                doctorCard(
                  'images/2.jpeg',
                  'dr. Greta Cordoba',
                  'Psychiatrist',
                  '8 years of experience',
                  '95%',
                  '2000 patient stories',
                  '8:00 PM',
                  'Metropolitan Mental Health Center', // Hospital location
                ),
                doctorCard(
                  'images/3.jpeg',
                  'dr. Mike Strife',
                  'Surgeon',
                  '10 years of experience',
                  '96%',
                  '1800 patient stories',
                  '9:00 AM',
                  'Sunrise General Hospital', // Hospital location
                ),
                doctorCard(
                  'images/4.jpeg',
                  'dr. Song Hye Kyo',
                  'Neurosurgeon',
                  '12 years of experience',
                  '97%',
                  '1700 patient stories',
                  '10:00 AM',
                  'Unity Hospital', // Hospital location
                ),
                doctorCard(
                  'images/5.jpeg',
                  'dr. Nurul Hanifa',
                  'Nutritionist',
                  '7 years of experience',
                  '92%',
                  '1600 patient stories',
                  '11:00 PM',
                  'Healthcare City Hospital', // Hospital location
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
