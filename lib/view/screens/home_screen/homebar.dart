import 'package:flutter/material.dart';
import 'package:personal_training_app/view/screens/add_screen/add_client_personaldata_screen.dart';
import 'package:personal_training_app/view/screens/home_screen/full_client_screen.dart';
import 'package:personal_training_app/view/screens/home_screen/screeen_home.dart';

class HomeBarScreen extends StatefulWidget {
  const HomeBarScreen({super.key});

  @override
  State<HomeBarScreen> createState() => _HomeBarScreenState();
}

class _HomeBarScreenState extends State<HomeBarScreen> {
  int pageindex = 0;

  final List<Widget> pages = [
    Placeholder(child: FullClientScreen()),
    Placeholder(
        child: ScreenForm(
      titleform: '',
    )),
    const Placeholder(child: ScreenHome()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageindex,
        onTap: (index) {
          setState(() {
            pageindex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: 'Add Client',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_sharp),
            label: 'Category',
          )
        ],
        elevation: 0,
        selectedFontSize: 15,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: pageindex == 0 ? Colors.grey : Colors.grey,
      ),
    );
  }
}
