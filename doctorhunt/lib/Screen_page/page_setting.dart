import 'package:doctorhunt/Screen_page/page_doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageSetting extends StatefulWidget {
  const PageSetting({super.key});

  @override
  State<PageSetting> createState() => _PageSettingState();
}

class _PageSettingState extends State<PageSetting> {
  //final icon = isOn ? Icon(Icons.power_settings_new) : Icon(Icons.power_off);

  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bg.jpg'), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 45,
                    decoration: BoxDecoration(
                        color: Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(50)),
                    alignment: Alignment.topLeft,
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DrCard(),
                              ));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text('Settings',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Color(0xff333333))),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25.0, right: 8.0),
                      child: Text(
                        "Account settings",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        "images/logo_gembok.png",
                        height: 32,
                        width: 32,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Change Password",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        "images/logo_notif.png",
                        height: 32,
                        width: 32,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Notifications",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        "images/logo_stat.png",
                        height: 32,
                        width: 32,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Statistics",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        "images/logo_orang.png",
                        height: 32,
                        width: 32,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "About us",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "More Options",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Text Messages",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ButtonBar(
                          children: [
                            IconButton(
                              icon: isOn
                                  ? Icon(Icons.power_settings_new)
                                  : Icon(Icons.power_off),
                              onPressed: _toggleSwitch,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Phone calls",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      //Spacer(),
                      //Icon(Icons.chevron_right)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Languages",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text('English'),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Curency",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text('USD'),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Linked accounts",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      //Icon(Icons.radio)
                      Spacer(),
                      Text('Facebook, Google'),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun ikon berdasarkan status isOn
  Icon _buildIcon() {
    return isOn ? Icon(Icons.power_settings_new) : Icon(Icons.power_off);
  }

  // Fungsi untuk menangani perubahan status isOn
  void _toggleSwitch() {
    setState(() {
      isOn = !isOn;
      if (isOn) {
        print("Tombol ON ditekan");
      } else {
        print("Tombol OFF ditekan");
      }
    });
  }
}
