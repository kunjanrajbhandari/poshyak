import 'package:flutter/material.dart';
import 'package:poshyak/kconstant.dart';
import 'package:poshyak/view/home1.dart';
import 'package:poshyak/widget/appbar.dart';
import 'package:poshyak/widget/drawer/drawer.dart';

import 'home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  List tab = [
    const HomePage(),
    HomePage1(
      title: "category",
    ),
    HomePage1(
      title: "theft store",
    ),
    HomePage1(
      title: "Feature",
    ),
    HomePage1(
      title: "wishlist",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      backgroundColor: Colors.white,
      body: tab[_selectedIndex],
      drawer: MyDrawer(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [elevation(offsetX: 5, offsetY: -1)],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18), topRight: Radius.circular(18))),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            selectedLabelStyle: const TextStyle(color: Colors.black),
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            items: const [
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('assets/icon/logo3.png'),
                  height: 33,
                  color: Colors.black,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('assets/icon/category.png'),
                  height: 22,
                  color: Colors.black,
                ),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('assets/icon/theftStore.png'),
                  height: 22,
                  color: Colors.black,
                ),
                label: 'Theft Store',
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('assets/icon/Star.png'),
                  height: 26,
                  color: Colors.black,
                ),
                label: 'Feature',
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('assets/icon/heart.png'),
                  height: 22,
                  color: Colors.black,
                ),
                label: 'Wishlist',
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
