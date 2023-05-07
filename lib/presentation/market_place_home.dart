import 'package:flutter/material.dart';
import 'package:market_place_app/presentation/home/screens/coming_soon.dart';
import 'package:market_place_app/presentation/home/screens/home_screen.dart';
import 'package:market_place_app/presentation/settings/settings_screen.dart';

class MarketPlaceHome extends StatefulWidget {
  const MarketPlaceHome({Key? key}) : super(key: key);

  @override
  State<MarketPlaceHome> createState() => _MarketPlaceHomeState();
}

class _MarketPlaceHomeState extends State<MarketPlaceHome> {
  late final PageController _pageController;

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const ComingSoon(),
    const ComingSoon(),
    const SettingsScreen(),
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
        currentIndex: _selectedIndex,
        onTap: (index) => _handlePageTap(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num_outlined),
            label: "Voucher",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: "Wallet",
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
