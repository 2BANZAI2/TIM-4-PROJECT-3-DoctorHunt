import 'package:doctorhunt/Screen_page/page_diagnostic_test2.dart';
import 'package:doctorhunt/Screen_page/page_help_center.dart';
import 'package:flutter/material.dart';

class PageDiagnostic extends StatefulWidget {
  const PageDiagnostic({super.key});

  @override
  State<PageDiagnostic> createState() => _PageDiagnosticState();
}

class _PageDiagnosticState extends State<PageDiagnostic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'),
                fit: BoxFit.cover
              )
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                            => PageHelpCenter(),
                          ));
                        },
                        icon: Icon(Icons.arrow_back_ios, color: Color(0xff828282),),
                      ),
                  
                    ),
                  ),
                  Container(
                child : Text('Diagonstics Tests ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                color: Color(0xff333333)
                  )),)
                ],
              ),
              const Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 100,),
                    Image(image: AssetImage('images/diagnosa.png',),height: 214,)
                  ],
                ),
              Column(
                children: [
                  SizedBox(height: 30,),
                  Text('You have not booked any tests yet',
                  style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff222222)
                            )),

                  SizedBox(height: 30,),
                  Text('Get started with your first heatlh checkup',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff677294)
                            )),
                  //MaterialButton(onPressed: (){},)

                ],
              ),
                ],
               ),             
            ),
            SizedBox(height: 50,),
            Center(
              
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [GestureDetector(onTap: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>PageDiagnosatest2()), (route) => false);
                  },
                  child: Container(
                    width: 270,
                    height: 54,
                    decoration: BoxDecoration(
                      color: Color(0xff0EBE7F),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(
                      child: Text('Book Now',
                        style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xffffffff)
                              ),),
                      
                    ),
                  ),
              ),
              ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}