//page controller
//list of topLevelPages
// single common widget)main wraper widget[deafulticon,page,labell,filledIcon] return getsureDectector
//bottom app bar

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:mental_health_app/features/meditation/presentation/pages/pages.dart';
import 'package:mental_health_app/presentation/bottomnav/bloc/bottom_nav_cubit.dart';

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

  //method for onPageChanges
  void onPageChanged(int page) {
    final currentstate = context.read<BottomNavCubit>().state;
    if (currentstate != page) {}
    BlocProvider.of<BottomNavCubit>(context).changeSelectedIndex(page);
  }

  //top level Pages
  final List<Widget> topLevelPages = [MeditationScreen(), MusicPlayerScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _mainWrapperBody(),
      bottomNavigationBar: _bottomAppBar(context),
    );
  }

  //main wraper body
  PageView _mainWrapperBody() {
    return PageView(
      onPageChanged: (page) => onPageChanged(page),
      controller: pageController,
      children: topLevelPages,
    );
  }

  // Bottom Navigation Bar - MainWrapper Widget
  BottomAppBar _bottomAppBar(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          _bottomAppBarItem(
            context,
            defaultIcon: IconlyLight.home,
            page: 0,
            label: 'Home',
            filledIcon: IconlyBold.home,
          ),
          _bottomAppBarItem(
            context,
            defaultIcon: IconlyLight.play,
            page: 1,
            label: 'Playlist',
            filledIcon: IconlyBold.play,
          ),
        ],
      ),
    );
  }

  // Bottom Navigation Bar Single item - MainWrapper Widget
  Widget _bottomAppBarItem(
    BuildContext context, {
    required defaultIcon,
    required page,
    required label,
    required filledIcon,
  }) {
    final isSelecetd = context.watch<BottomNavCubit>().state == page;
    return GestureDetector(
      onTap: () {
        BlocProvider.of<BottomNavCubit>(context).changeSelectedIndex(page);

        pageController.animateToPage(
          page,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10),
            Icon(
              isSelecetd ? filledIcon : defaultIcon,
              color: isSelecetd ? Colors.pinkAccent : Colors.grey,
            ),
            SizedBox(height: 3),
            Text(
              label,

              style: GoogleFonts.aBeeZee(
                fontSize: 13,
                color: isSelecetd ? Colors.pinkAccent : Colors.grey,
                fontWeight: isSelecetd ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
