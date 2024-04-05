import 'package:flutter/material.dart';

class PopularDoctor extends StatefulWidget {
  const PopularDoctor({Key? key}) : super(key: key);

  @override
  State<PopularDoctor> createState() => _PopularDoctorState();
}

class _PopularDoctorState extends State<PopularDoctor> {
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
    String rating,
    String views,
  ) {
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
                  width: 50, // Adjust the width of the image container
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
                      Text(
                        specialization,
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
                            color: Colors.yellow,
                            size: 12,
                          ),
                          Spacer(),
                          Text(
                            rating,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '(${views} views)',
                             style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.normal),
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
    );
  }

  Widget _buildPopularDoctorCard(
      String image, String doctorName, String specialization) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        width: 120,
        height: 160,
        child: Stack(
          children: [
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
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      specialization,
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.grey[800],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 12,
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
            top: 60,
            left: 15,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Popular Doctor',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 15,
            right: 0,
            child: Container(
              height: 160,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildPopularDoctorCard(
                        'images/1.jpeg', 'dr. Mila Claudia', 'Paediatrician'),
                    _buildPopularDoctorCard(
                        'images/2.jpeg', 'dr. Greta Cordoba', 'Psychiatrist'),
                    _buildPopularDoctorCard(
                        'images/3.jpeg', 'dr. Mike Strife', 'Surgeon'),
                    _buildPopularDoctorCard(
                        'images/4.jpeg', 'dr. Song Hye Kyo', 'Neurosurgeon'),
                    _buildPopularDoctorCard(
                        'images/5.jpeg', 'dr. Nurul Hanifa', 'Nutritionist'),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            top: 270,
            left: 15,
            right: 0,
            child: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Category',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned.fill(
            top: 300,
            bottom: 6,
            child: ListView(
              children: [
                doctorCard(
                  'images/1.jpeg',
                  'dr. Mila Claudia',
                  'Paediatrician',
                  '3.7',
                  '2328',
                ),
                doctorCard(
                  'images/2.jpeg',
                  'dr. Greta Cordoba',
                  'Psychiatrist',
                  '4.5',
                  '3453',
                ),
                doctorCard(
                  'images/3.jpeg',
                  'dr. Mike Strife',
                  'Surgeon',
                  '3.9',
                  '2322',
                ),
                doctorCard(
                  'images/4.jpeg',
                  'dr. Song Hye Kyo',
                  'Neurosurgeon',
                  '4.5',
                  '4564',
                ),
                doctorCard(
                  'images/5.jpeg',
                  'dr. Nurul Hanifa',
                  'Nutritionist',
                  '4.4',
                  '3445',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
