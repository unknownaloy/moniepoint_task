import 'package:flutter/material.dart';

class MarketPlaceHome extends StatefulWidget {
  const MarketPlaceHome({Key? key}) : super(key: key);

  @override
  State<MarketPlaceHome> createState() => _MarketPlaceHomeState();
}

class _MarketPlaceHomeState extends State<MarketPlaceHome> {
  late final PageController _pageController;

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    Container(color: Colors.orangeAccent,),
    Container(color: Colors.purpleAccent,),
    Container(color: Colors.blueAccent,),
    Container(color: Colors.brown,),
  ];

  void _handlePageTap(int index) {
    setState(() => _selectedIndex = index);
    _pageController.jumpToPage(index);
  }

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffF1F2F4),
        selectedItemColor: const Color(0xff4BB198),
        unselectedItemColor: const Color(0xff93959D),
        selectedIconTheme: const IconThemeData(
            color: Color(0xff4BB198),
        ),
        unselectedIconTheme: const IconThemeData(
            color: Color(0xff93959D),
        ),
        currentIndex: _selectedIndex,
        onTap: (index) => _handlePageTap(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Characters",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: "Quiz",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
