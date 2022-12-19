import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor:Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 35,             
        items:const[
          BottomNavigationBarItem(
            icon:Icon(Icons.home_outlined),label: 'home'),
             BottomNavigationBarItem(
            icon:Icon(Icons.search),label: 'search'),
             BottomNavigationBarItem(
            icon:Icon(Icons.movie_creation_outlined),label: 'Reels'),
            BottomNavigationBarItem(
            icon:Icon(Icons.favorite_border_outlined),label: 'Likes'),
            BottomNavigationBarItem(
            icon:CircleAvatar(
              backgroundImage: AssetImage('assets/images/aespa.jpeg') ,
            ),label: 'user'),
        ]),);
  }
}