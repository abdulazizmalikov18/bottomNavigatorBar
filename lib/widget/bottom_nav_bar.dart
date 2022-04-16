import 'package:botim_barni_sinash/screen/home.dart';
import 'package:botim_barni_sinash/screen/like.dart';
import 'package:botim_barni_sinash/screen/profil.dart';
import 'package:botim_barni_sinash/screen/search.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarS extends StatefulWidget {
  const BottomNavigationBarS({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarS> createState() => _BottomNavigationBarSState();
}

class _BottomNavigationBarSState extends State<BottomNavigationBarS> {
  var currentIndex = 0;
  List screenList = [
    const HomeScreen(),
    const LikeScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Shoes Shop',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: screenList[currentIndex],
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: DotNavigationBar(
            marginR: const EdgeInsets.symmetric(horizontal: 20),
            backgroundColor: Colors.blue,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            currentIndex: currentIndex,
            dotIndicatorColor: Colors.transparent,
            unselectedItemColor: Colors.white54,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              DotNavigationBarItem(
                icon: const Icon(Icons.home),
                selectedColor: Colors.white,
              ),
              DotNavigationBarItem(
                icon: const Icon(Icons.favorite),
                selectedColor: Colors.white,
              ),
              DotNavigationBarItem(
                icon: const Icon(Icons.search),
                selectedColor: Colors.white,
              ),
              DotNavigationBarItem(
                icon: const Icon(Icons.person),
                selectedColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
