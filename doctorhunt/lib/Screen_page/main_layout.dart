import 'package:doctorhunt/Screen_page/favoritedoctor.dart';
import 'package:doctorhunt/Screen_page/finddoctor.dart';
import 'package:doctorhunt/Screen_page/home_screen.dart';
import 'package:doctorhunt/Screen_page/populardoctor.dart';
import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  var _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const FavouriteDoctor(),
    const FindDoctor(),
    const PopularDoctor()
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar:  MoltenBottomNavigationBar(
          selectedIndex: _selectedIndex,
          barHeight: 45,
          domeCircleSize: 40,
          borderSize: 30,
          curve: Curves.easeInOut,
          domeCircleColor: const Color.fromRGBO(14, 190, 126, 1),
          onTabChange: (clickedIndex) {
            setState(() {
              _selectedIndex = clickedIndex;
            });
          },
          tabs: [
            MoltenTab(
              icon: const Icon(Icons.home),
            ),
            MoltenTab(
              icon: const Icon(Icons.favorite),
            ),
            MoltenTab(
              icon: const Icon(Icons.menu_book),
            ),
            MoltenTab(
              icon: const Icon(Icons.chat_rounded),
            ),
          ],
        ),
    
    );
  }
}
