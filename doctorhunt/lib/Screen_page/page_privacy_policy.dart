import 'package:doctorhunt/Screen_page/page_doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PagePrivacyPolicy extends StatefulWidget {
  const PagePrivacyPolicy({super.key});

  @override
  State<PagePrivacyPolicy> createState() => _PagePrivacyPolicyState();
}

class _PagePrivacyPolicyState extends State<PagePrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:SafeArea(
        
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'),
                fit: BoxFit.cover
              )
            ),
          child: Column(
            children: [
              Row(
              children: [
                SizedBox(width: 20,),
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
                            => DrCard(),
                          ));
                        },
                        icon: Icon(Icons.arrow_back_ios, color: Color(0xff828282),),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                child : Text('Privacy policy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                color: Color(0xff333333)
                  )),)
              ],
            ),

              const Center(
                child: Column(
                  children: [
                    SizedBox(height: 20,width: 20,),
                    Text("Doctor Hunt Apps Privacy Policy",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Icon(
                          Icons.brightness_1,
                          size: 6.0, // Adjust size for an even smaller dot
                          color: Colors.green, // Change color as needed
                        ),
                      
                          Expanded(
                            child:Padding(padding: EdgeInsets.all( 8.0),
                            child: Text("Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum. The point of using. ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            ),
                            ),
                          ),
                        
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Icon(
                          Icons.brightness_1,
                          size: 6.0, // Adjust size for an even smaller dot
                          color: Colors.green, // Change color as needed
                        ),
                      
                          Expanded(
                            child:Padding(padding: EdgeInsets.all( 8.0),
                            child: Text(" Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted. ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            ),
                            ),
                          ),
                        
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Icon(
                          Icons.brightness_1,
                          size: 6.0, // Adjust size for an even smaller dot
                          color: Colors.green, // Change color as needed
                        ),
                      
                          Expanded(
                            child:Padding(padding: EdgeInsets.all( 8.0),
                            child: Text("The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted. ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            ),
                            ),
                          ),
                        
                      ],
                    ),
                    
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text("It is a long established fact that reader distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established. ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      ),
                    ),
                    

                  ],
                  
                ),
              ), 

            ],
          
          
        ),
      ),
      ),
    );
  }
}