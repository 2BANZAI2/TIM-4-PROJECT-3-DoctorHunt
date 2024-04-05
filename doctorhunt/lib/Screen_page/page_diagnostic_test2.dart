import 'package:doctorhunt/Screen_page/page_diagnostic_test.dart';
import 'package:flutter/material.dart';
// import 'package:project3/screen_page/Doctor_screen.dart';

class Diagnosa {
  final String title;
  final String subtitle;
  final String test;
  final String imageUrl;
  final double price;
  final double diskonprice;
  final String benefit;

  Diagnosa({
    required this.title,
    required this.subtitle,
    required this.test,
    required this.imageUrl,
    required this.price,
    required this.diskonprice,
    required this.benefit,
  });
}

class PageDiagnosatest2 extends StatefulWidget {
  const PageDiagnosatest2({Key? key}) : super(key: key);

  @override
  State<PageDiagnosatest2> createState() => _PageDiagnosatest2State();
}

class _PageDiagnosatest2State extends State<PageDiagnosatest2> {
  @override
  Widget build(BuildContext context) {
    List<Diagnosa> diagnosas = [
      Diagnosa(
        title: 'Advanced Young Indian Health Checkup',
        subtitle: 'Ideal for individuals aged 21-40 years',
        test: '69 tests included', // Tambahkan tes di sini
        imageUrl: 'images/img.png',
        price: 358,
        diskonprice: 330,
        
        benefit: '+ 10% Health cashback T&C',
      ),
      Diagnosa(
        title: 'Working Women’s Health Checkup',
        subtitle: 'Ideal for individuals aged 21-40 years',
        test: '119 tests included', // Tambahkan tes di sini
        imageUrl: 'images/img2.png',
        price: 387,
        diskonprice: 345,
        benefit: '+ 10% Health cashback T&C',
      ),
      Diagnosa(
        title: 'Active Professional Health Checkup',
        subtitle: 'Ideal for individuals aged 21-40 years',
        test: '100 tests included', // Tambahkan tes di sini
        imageUrl: 'images/img3.png',
        price: 457,
        diskonprice: 411,
        benefit: '+ 10% Health cashback T&C',
      ),
      // Tambahkan objek Diagnosa lain jika diperlukan
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      alignment: Alignment.topLeft,
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageDiagnostic(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.arrow_back_ios,
                              color: Color(0xff828282)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Diagnostics Tests ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xff333333),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Text(
                          'Get Full body health checkups',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            //fontFamily: Rubik,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Text(
                          'from the comfort of your home.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            //fontFamily: Rubik,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          'Upto 45% off + get 10% healthcash back',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff0EBE7F),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff2753F3),
                            borderRadius: BorderRadius.circular(6)
                            //color: Color()
                            ),
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Free Home',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text(
                            'Sample pickup',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFF484C),
                            borderRadius: BorderRadius.circular(6)
                            //color: Color()
                            ),
                        child: Icon(
                          Icons.people,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Practo ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            ' asociate labs',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFE7F44),
                            borderRadius: BorderRadius.circular(6)
                            //color: Color()
                            ),
                        child: Icon(
                          Icons.description_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'E-Reports in',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text(
                            '24-72 hours',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff0EBE7E),
                            borderRadius: BorderRadius.circular(6)
                            //color: Color()
                            ),
                        child: Icon(
                          Icons.create,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Free follow-up  ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            ' with a doctor',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:16.0),
                      child: Text(
                        'Recommend for you',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    const SizedBox(height: 20),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: diagnosas.length,
                      itemBuilder: (BuildContext context, int index) {
                        Diagnosa diagnosa = diagnosas[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(16),
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 16),
                                Text(
                                  diagnosa.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  diagnosa.subtitle,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        4), // Tambahkan spasi antara subtitle dan tes
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(
                                            0xff0EBE7F)), // Warna border hijau
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                    diagnosa.test,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color:
                                          Color(0xff0EBE7F), // Warna teks hijau
                                    ),
                                  ),
                                ),
                                AspectRatio(
                                  aspectRatio:
                                      16 / 9, // Ubah rasio sesuai kebutuhan
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      diagnosa.imageUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Price: \$${diagnosa.price}',
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              'Diskon Prize:\$${diagnosa.diskonprice}',
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                      ],
                                    ),
                                    Container(
                                      width: 110,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Color(0xff0EBE7F),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Center(
                                        child: Text(
                                          'Book now',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                              color: Color(0xffffffff)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  diagnosa.benefit,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
