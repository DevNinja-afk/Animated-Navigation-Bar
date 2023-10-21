import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AnimatedCont extends StatefulWidget {
  const AnimatedCont({super.key});

  @override
  State<AnimatedCont> createState() => _AnimatedContState();
}

class _AnimatedContState extends State<AnimatedCont> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Navigation Bar'),centerTitle: true,backgroundColor: Colors.black,),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
          child: GNav(
            padding: EdgeInsets.all(10),
            backgroundColor: Colors.black,
            color: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            onTabChange: (index){
              print(index);
            },
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
               GButton(
                icon: Icons.favorite_border,
                text: 'Likes',
              ),
               GButton(
                icon: Icons.search,
                text: 'Search',
              ),
               GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
