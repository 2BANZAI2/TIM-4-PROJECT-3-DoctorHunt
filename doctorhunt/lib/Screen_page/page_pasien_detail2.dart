import 'package:doctorhunt/Screen_page/page_help_center.dart';
import 'package:doctorhunt/Screen_page/page_pasien_detail.dart';
import 'package:flutter/material.dart'; // Assuming PageHelpCenter exists

enum Gender { Male, Female, Other }

class PatientDetailsScreen extends StatefulWidget {
  const PatientDetailsScreen({super.key});

  @override
  State<PatientDetailsScreen> createState() => _PatientDetailsScreenState();
}

class _PatientDetailsScreenState extends State<PatientDetailsScreen> {
 final _dayController = TextEditingController();
  final _monthController = TextEditingController();
  final _yearController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();  
  Gender _selectedGender = Gender.Male; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Stack for overlapping elements (background image and content)
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content positioned on top
          SafeArea(
            child: SingleChildScrollView(
              // Allow scrolling if content overflows
              child: Padding(
                padding: const EdgeInsets.all(20.0), // Add some padding
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Left-align content
                  children: [
                    Row(
                       children: [
                    Container(
                    width: 45,
                    decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    alignment: Alignment.topLeft,
                    child: Center(
                      child: IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                            => PagePasienDetail1(),
                          ));
                        },
                        icon: Icon(Icons.arrow_back_ios, color: Color(0xff828282),),
                      ),
                    ),
                  ),
                  Container(
                  child : Text(' Patient Details  ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                color: Color(0xff333333)
                  )),)  
                  ],
                    ),

                    // Top navigation with back button and title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Patient Details',
                          style: TextStyle(
                            color: Colors.white, // Assuming white for title
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(), // Spacer for even spacing
                      ],
                    ),
                    const SizedBox(height: 20.0), // Add some spacing

                    // Patient details (replace with actual data widgets)
                    TextFormField(
                      initialValue: 'Abdullah Mamun', // Set initial value
                      decoration: const InputDecoration(
                        labelText: 'Patient Name', // Input field label
                        border: OutlineInputBorder(), // Input field border style
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    
                     
                      //   const Text('Age: '),
                      //   Text('35'),
                       
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3 - 20, // Fixed width for each field
                    child: TextFormField(
                      controller: _dayController,
                      keyboardType: TextInputType.number, // Allow only numbers
                      maxLength: 2, // Maximum 2 digits for day
                      decoration: const InputDecoration(
                        labelText: 'Day',
                        counterText: '', // Hide character counter
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3 -20,
                    child: TextFormField(
                      controller: _monthController,
                      keyboardType: TextInputType.number,
                      maxLength: 2,
                      decoration: const InputDecoration(
                        labelText: 'Month',
                        counterText: '',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3-20,// Slightly wider for year
                    child: TextFormField(
                      controller: _yearController,
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      decoration: const InputDecoration(
                        labelText: 'Year',
                        counterText: '',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          
                      
                    
                    const SizedBox(height: 10.0),
                   Column(
                      children: [

                        Row(
                          children: [
                            Text('Gender:'),
                          ],
                        ),
                          Row(
                            children: [
                              Radio<Gender>(
                                value: Gender.Male,
                                groupValue: _selectedGender,
                                onChanged: (Gender? value) {
                                  setState(() {
                                    _selectedGender = value!;
                                  });
                                },
                              ),
                              const Text('Male'),
                              const SizedBox(width: 20.0),
                              Radio<Gender>(
                                value: Gender.Female,
                                groupValue: _selectedGender,
                                onChanged: (Gender? value) {
                                  setState(() {
                                    _selectedGender = value!;
                                  });
                                },
                              ),
                              const Text('Female'),
                              const SizedBox(width: 20.0),
                              Radio<Gender>(
                                value: Gender.Other,
                                groupValue: _selectedGender,
                                onChanged: (Gender? value) {
                                  setState(() {
                                    _selectedGender = value!;
                                  });
                                },
                              ),
                              const Text('Other'),
                            ],
                          ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    TextFormField(
                      initialValue:'+8801000000000',
                      // controller: _phoneController,
                      // keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        labelText: 'Nomor Telepon',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10.0),

                    // Email
                    TextFormField(
                      initialValue:'itsmemamun1@gmail.com',
                      // controller: _emailController,
                      // keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10.0),

                    const SizedBox(height: 20.0), // Add some spacing

                    // "Continue" button
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press (navigation or action)
                      },
                      child: const Text('Continue'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Assuming green for button
                        minimumSize: const Size(double.infinity, 50.0), // Full width
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
