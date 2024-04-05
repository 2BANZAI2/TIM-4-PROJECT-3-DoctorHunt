import 'package:flutter/material.dart';

class FavouriteDoctor extends StatefulWidget {
  const FavouriteDoctor({Key? key}) : super(key: key);

  @override
  State<FavouriteDoctor> createState() => _FavouriteDoctorState();
}

class _FavouriteDoctorState extends State<FavouriteDoctor> {
  late TextEditingController _findController;

  // Map to store favorite status for each doctor
  final Map<int, bool> _favoriteStatus = {
    1: false,
    2: false,
    3: false,
    4: false,
  };

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'),
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
                'Favourite Doctors',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Positioned(
            top: 70,
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
          Positioned(
            top: 120,
            left: 20,
            right: 20,
            bottom: 0,
            child: ListView(
              children: [
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    _buildPopularDoctorCard(
                      'images/1.jpeg',
                      'dr. Mila Claudia',
                      'Paediatrician',
                      1,
                    ),
                    _buildPopularDoctorCard(
                      'images/3.jpeg',
                      'dr. Mike Strife',
                      'Surgeon',
                      2,
                    ),
                    _buildPopularDoctorCard(
                      'images/4.jpeg',
                      'dr. Song Hye Kyo',
                      'Neurosurgeon',
                      3,
                    ),
                    _buildPopularDoctorCard(
                      'images/5.jpeg',
                      'dr. Nurul Hanifa',
                      'Nutritionist',
                      4,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Featured Doctors',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildFeatureDoctorCard(
                        'images/1.jpeg',
                        'dr. Mila Claudia',
                        '3.7',
                        '50',
                      ),
                      _buildFeatureDoctorCard(
                        'images/2.jpeg',
                        'dr. Greta Cordoba',
                        '4.5',
                        '80',
                      ),
                      _buildFeatureDoctorCard(
                        'images/3.jpeg',
                        'dr. Mike Strife',
                        '3.9',
                        '78',
                      ),
                      _buildFeatureDoctorCard(
                        'images/4.jpeg',
                        'dr. Song Hye Kyo',
                        '4.5',
                        '70',
                      ),
                      _buildFeatureDoctorCard(
                        'images/5.jpeg',
                        'dr. Nurul Hanifa',
                        '4.4',
                        '85',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularDoctorCard(
    String image,
    String doctorName,
    String specialization,
    int index,
  ) {
    return Container(
      width: 120,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(image),
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: IconButton(
              icon: Icon(
                _favoriteStatus[index] == true
                    ? Icons.favorite
                    : Icons.favorite_border,
                size: 20,
                color: _favoriteStatus[index] == true
                    ? Colors.red
                    : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  // Toggle favorite status
                  _favoriteStatus[index] = !_favoriteStatus[index]!;
                });
              },
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), // Rounded all corners
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
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
                          style: const TextStyle(
                            fontSize: 8, // Adjust the font size as needed
                            color: Colors.green,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 1), // changes position of shadow
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
