//page controller
//list of topLevelPages
// single common widget)main wraper widget[deafulticon,page,labell,filledIcon] return getsureDectector
//bottom app bar

import 'package:flutter/material.dart';
import 'package:mental_health_app/features/meditation/presentation/pages/pages.dart';

class MainWraper extends StatefulWidget {
  const MainWraper({super.key});

  @override
  State<MainWraper> createState() => _MainWraperState();
}

class _MainWraperState extends State<MainWraper> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  //top level Pages

  final List<Widget> topLevelPages = [MeditationScreen(), PlaylistScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _mainWrapperBody());
  }

  //main wraper body
  PageView _mainWrapperBody() {
    return PageView(controller: pageController, children: topLevelPages);
  }
}
