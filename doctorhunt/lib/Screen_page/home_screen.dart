import 'package:doctorhunt/Screen_page/doctordetail.dart';
import 'package:doctorhunt/Screen_page/livedoctor.dart';
import 'package:doctorhunt/Screen_page/page_doctor_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background container with the image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'), // Background image path
                fit: BoxFit
                    .fill, // Adjust the image's size to cover the whole screen
              ),
            ),
          ),
          // Content container
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF0EBE7E),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 35),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Hi, Gerry',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Find Your Doctor',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DrCard()));
                            },
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                  'images/onboarding1.png'), // Replace this with your image
                            ),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),

                    // Search bar container
                    Container(
                      margin:
                          const EdgeInsets.only(top: 110, left: 20, right: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w300),
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
                                _searchController.clear();
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 15),
                  child: Text(
                    "Live Doctors",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildLiveDoctorCard('images/1.jpeg'),
                        _buildLiveDoctorCard('images/2.jpeg'),
                        _buildLiveDoctorCard('images/3.jpeg'),
                        _buildLiveDoctorCard('images/4.jpeg'),
                        _buildLiveDoctorCard('images/5.jpeg'),
                      ],
                    )),
                const SizedBox(height: 10),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildBodyPartCard('images/o1.png', Colors.blue),
                        _buildBodyPartCard('images/o2.png', Colors.greenAccent),
                        _buildBodyPartCard('images/o3.png', Colors.yellow),
                        _buildBodyPartCard('images/o4.png', Colors.redAccent),
                        _buildBodyPartCard('images/o5.png', Colors.amber),
                        _buildBodyPartCard('images/o6.png', Colors.grey),
                      ],
                    )),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 15),
                  child: Text(
                    "Popular Doctors",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildPopularDoctorCard('images/1.jpeg',
                            'dr. Mila Claudia', 'Paediatrician', '50'),
                        _buildPopularDoctorCard('images/2.jpeg',
                            'dr. Greta Cordoba', 'Psychiatrist', '80'),
                        _buildPopularDoctorCard('images/3.jpeg',
                            'dr. Mike Strife', 'Surgeon', '78'),
                        _buildPopularDoctorCard('images/4.jpeg',
                            'dr. Song Hye Kyo', 'Neurosurgeon', '70'),
                        _buildPopularDoctorCard('images/5.jpeg',
                            'dr. Nurul Hanifa', 'Nutritionist', '85'),
                      ],
                    )),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 15),
                  child: Text(
                    "Feature Doctors",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildFeatureDoctorCard(
                            'images/1.jpeg', 'dr. Mila Claudia', '3.7', '50'),
                        _buildFeatureDoctorCard(
                            'images/2.jpeg', 'dr. Greta Cordoba', '4.5', '80'),
                        _buildFeatureDoctorCard(
                            'images/3.jpeg', 'dr. Mike Strife', '3.9', '78'),
                        _buildFeatureDoctorCard(
                            'images/4.jpeg', 'dr. Song Hye Kyo', '4.5', '70'),
                        _buildFeatureDoctorCard(
                            'images/5.jpeg', 'dr. Nurul Hanifa', '4.4', '85'),
                      ],
                    )),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLiveDoctorCard(String image) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LiveDoctor(image),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
            left: 15), // Adjust the padding to create the desired gap
        child: SizedBox(
          width: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
                10), // Adjust the circular radius to control the roundness of the container
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
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      width: 30,
                      height: 13,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: const Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.circle,
                              size: 4,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'LIVE',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 5),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // Position the IconButton at the center of the container
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: IconButton(
                        icon: const Icon(Icons.play_circle_fill),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LiveDoctor(image),
                            ),
                          );
                        },
                        iconSize: 40,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBodyPartCard(String image, Color color) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: 70,
      height: 70, // Set a fixed height for the container
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors: [color, color.withOpacity(0.7)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            10), // Adjust the circular radius to control the roundness of the image
        child: Center(
          child: Image.asset(
            image,
            width: 50, // Set the width of the image
            height: 50, // Set the height of the image
            fit: BoxFit
                .cover, // Ensure the image covers the entire space while maintaining its aspect ratio
          ),
        ),
      ),
    );
  }

  Widget _buildPopularDoctorCard(
      String image, String doctorName, String specialization, String salary) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DoctorDetail(
              image: image,
              doctorName: doctorName,
              specialization: specialization,
              salary: salary,
            ),
          ),
        );
      },
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(10), // Adjust the border radius as needed
        child: Container(
          margin: const EdgeInsets.only(left: 10),
          width: 120, // Adjust the width as needed
          height: 160, // Adjust the height as needed
          child: Stack(
            children: [
              // Image
              Positioned.fill(
                top: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              // Texts
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), // Rounded all corners
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10, // Adjust the font size as needed
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 3), // Adjust the height as needed
                      Text(
                        specialization,
                        style: TextStyle(
                          fontSize: 8, // Adjust the font size as needed
                          color: Colors.grey[800],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2), // Adjust the height as needed
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 12, // Adjust the icon size as needed
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 12, // Adjust the icon size as needed
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 12, // Adjust the icon size as needed
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 12, // Adjust the icon size as needed
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 12, // Adjust the icon size as needed
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureDoctorCard(
      String image, String doctorName, String rate, String salary) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 100, // Adjust the width as needed
      height: 120, // Adjust the height as needed
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      child: Stack(
        children: [
          // Image
          Center(
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(image),
            ),
          ),
          // Heart button
          Positioned(
            top: -11,
            left: 0,
            child: IconButton(
              icon: const Icon(
                Icons.favorite,
                size: 12,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
          ),
          // Rating
          Positioned(
            top: 5,
            right: 5,
            child: Center(
              child: Text(
                rate,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Texts
          Positioned(
            bottom: 0,
            left: 25,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 8, // Adjust font size
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        '\$',
                        style: TextStyle(
                          fontSize: 7, // Adjust font size
                          color: Colors.black45,
                        ),
                      ),
                      Text(
                        '$salary/hour',
                        style: const TextStyle(
                          fontSize: 7, // Adjust font size
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
