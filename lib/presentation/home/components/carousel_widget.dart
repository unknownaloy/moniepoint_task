import 'dart:async';

import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  late PageController _pageController;

  int _currentIndex = 0;

  late Timer _timer;

  final _carousels = <Widget>[
    SizedBox(
      key: const Key("one"),
      width: double.infinity,
      child: Image.asset(
        "assets/images/carousel_01.jpg",
        fit: BoxFit.cover,
      ),
    ),
    SizedBox(
      key: const Key("two"),
      width: double.infinity,
      child: Image.asset(
        "assets/images/carousel_02.jpg",
        fit: BoxFit.cover,
      ),
    ),
    SizedBox(
      key: const Key("four"),
      width: double.infinity,
      child: Image.asset("assets/images/carousel_03.jpg", fit: BoxFit.cover,),
    ),
    SizedBox(
      key: const Key("three"),
      width: double.infinity,
      child: Image.asset(
        "assets/images/carousel_04.jpg",
        fit: BoxFit.cover,
      ),
    ),
    
  ];

  @override
  void initState() {
    super.initState();

    _pageController = PageController();

    _timer = Timer.periodic(const Duration(milliseconds: 3000), (timer) {
      final isLastIndex = _currentIndex == _carousels.length - 1;

      if (isLastIndex) {
        setState(() => _currentIndex = 0);
        // _pageController.animateToPage(
        //   _currentIndex,
        //   duration: const Duration(seconds: 1),
        //   curve: Curves.easeIn,
        // );
        _pageController.jumpToPage(_currentIndex);
      } else {
        setState(() => _currentIndex = _currentIndex + 1);
        _pageController.animateToPage(
          _currentIndex,
          duration: const Duration(seconds: 1),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: _carousels,
    );
  }
}
