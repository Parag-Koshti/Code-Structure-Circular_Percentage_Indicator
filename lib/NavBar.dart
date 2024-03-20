import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 25,
                ),
                onTap: () {},
                title: Text(
                  "HomePage",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.book_outlined,
                  size: 25,
                ),
                onTap: () {},
                title: Text(
                  "Courses",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.message,
                  size: 25,
                ),
                onTap: () {},
                title: Text(
                  "Lessons",
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
