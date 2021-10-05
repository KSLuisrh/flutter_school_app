import 'package:flutter/material.dart';
import 'package:flutter_school_app/screen/profile.dart';
import 'package:flutter_school_app/screen/schedule.dart';

class HomeInstructor extends StatefulWidget {
  const HomeInstructor({Key? key}) : super(key: key);

  @override
  State<HomeInstructor> createState() => _HomeInstructorState();
}

class _HomeInstructorState extends State<HomeInstructor> {
  int _currentIndex = 0;
  final List _children = [Schedule(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff297F87),
        selectedItemColor: Color(0xffFFF7AE),
        unselectedItemColor: Color(0xffF6D167),
        currentIndex: _currentIndex,
        onTap: (int idx) {
          setState(() {
            _currentIndex = idx;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android_outlined),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
