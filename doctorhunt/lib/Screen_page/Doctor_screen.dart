import 'package:doctorhunt/Screen_page/page_help_center.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_icons/flutter_icons.dart';

class Doctor {
  final String name;
  final String specialty;
  final String imageUrl;
  final double price;
  final double rating;
  final int numberOfReviews;
  final List<Icon> ratingStars; // New property for star ratings

  Doctor({
    required this.name,
    required this.specialty,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.numberOfReviews,
    required this.ratingStars,
  });
}

class PageDoctorScreen extends StatefulWidget {
  const PageDoctorScreen({Key? key}) : super(key: key);

  @override
  State<PageDoctorScreen> createState() => _PageDoctorScreenState();
}

class _PageDoctorScreenState extends State<PageDoctorScreen> {
  int _selectedIndex = 0; // Index for selected bottom nav item
  int _selectedCategoryIndex = 0; // Index for selected category

  // Function to handle bottom nav item selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Function to handle category selection
  void _onCategorySelected(int index) {
    setState(() {
      _selectedCategoryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'All',
      'Cardiologist',
      'Dentist',
      'Cardiollogy',
      'Cardiologist',
      'Dentist',
      'Cardiollogy',
      // Add more categories as needed
    ];

    List<Doctor> doctors = [
      Doctor(
        name: 'Dr. Pediatrician',
        specialty: 'Specialist Cardiologist ',
        imageUrl: 'Images/doctor1.png',
        price: 28,
        rating: 4.0,
        numberOfReviews: 7830,
        ratingStars: List.generate(
          4,
          (index) => Icon(
            Icons.star,
            color: Colors.yellow,
            size: 14,
          ),
        ),
      ),
      Doctor(
        name: 'Dr. Mistry Brick',
        specialty: 'Specialist Dentist ',
        imageUrl: 'Images/doctor2.png',
        price: 30,
        rating: 4.0,
        numberOfReviews: 6500,
        ratingStars: List.generate(
          4,
          (index) => Icon(
            Icons.star,
            color: Colors.yellow,
            size: 14,
          ),
        ),
      ),
      Doctor(
        name: 'Dr. Ether Wall',
        specialty: 'Specialist Cancern',
        imageUrl: 'Images/doctor3.png',
        price: 30,
        rating: 4.0,
        numberOfReviews: 6500,
        ratingStars: List.generate(
          4,
          (index) => Icon(
            Icons.star,
            color: Colors.yellow,
            size: 14,
          ),
        ),
      ),
      Doctor(
        name: 'Dr. Johan smith',
        specialty: 'Specialist cardiologist',
        imageUrl: 'Images/doctor4.png',
        price: 30,
        rating: 4.0,
        numberOfReviews: 6500,
        ratingStars: List.generate(
          4,
          (index) => Icon(
            Icons.star,
            color: Colors.yellow,
            size: 14,
          ),
        ),
      ),
      Doctor(
        name: 'Dr. Pediatrician',
        specialty: 'Specialist Cardiologist ',
        imageUrl: 'Images/doctor1.png',
        price: 28,
        rating: 4.0,
        numberOfReviews: 7830,
        ratingStars: List.generate(
          4,
          (index) => Icon(
            Icons.star,
            color: Colors.yellow,
            size: 14,
          ),
        ),
      ),
      Doctor(
        name: 'Dr. Mistry Brick',
        specialty: 'Specialist Dentist ',
        imageUrl: 'Images/doctor2.png',
        price: 30,
        rating: 4.0,
        numberOfReviews: 6500,
        ratingStars: List.generate(
          4,
          (index) => Icon(
            Icons.star,
            color: Colors.yellow,
            size: 14,
          ),
        ),
      ),
      // Add more doctors as needed
    ];

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                          Container(
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            alignment: Alignment.topLeft,
                            child: Center(
                              child: IconButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PageHelpCenter(),
                                  ),
                                ),
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: Color(0xff828282),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Doctor Screen',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                              color: Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        // Implement your search logic here
                      },
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categories.asMap().entries.map((entry) {
                        int index = entry.key;
                        String category = entry.value;
                        return GestureDetector(
                          onTap: () => _onCategorySelected(index),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                              decoration: BoxDecoration(
                                color: _selectedCategoryIndex == index ? Colors.green : Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                category,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: doctors.length,
                    itemBuilder: (BuildContext context, int index) {
                      Doctor doctor = doctors[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.all(16),
                            width: 400,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 253, 253, 253),
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 115,
                                      height: 115,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(doctor.imageUrl),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          doctor.name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          doctor.specialty,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            ...doctor.ratingStars,
                                            SizedBox(width: 5), // Add SizedBox to create space between rating stars and rating
                                            Text(
                                              '${doctor.rating}',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(width: 5), // Add SizedBox to create space between rating and number of reviews
                                            Text(
                                              ' | ${doctor.numberOfReviews} Std',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: IconButton(
                                    icon: Icon(Icons.favorite),
                                    color: Colors.red,
                                    onPressed: () {
                                      // Add your save functionality here
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Color(0xff858EA9),),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,
            color: Color(0xff858EA9)),
           label: 'Favorite Doctors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book,
            color: Color(0xff858EA9)),
           label: 'Doctors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined,
            color: Color(0xff858EA9)),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PageDoctorScreen(),
  ));
}
