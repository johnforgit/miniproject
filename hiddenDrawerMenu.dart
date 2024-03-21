import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:plant_prototype/Constants/colors.dart';
import 'package:plant_prototype/Constants/styles.dart';
import 'package:plant_prototype/Pages/myHomePage.dart';
import 'package:plant_prototype/Pages/mySettings.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  var colorValue = ColorConstants();
  var textStyles = styleValues();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home Page',
          baseStyle: textStyles.textStyle4,
          selectedStyle: textStyles.textStyle4,
          colorLineSelected: colorValue.leafGreen,
        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Settings',
              baseStyle: textStyles.textStyle4,
              selectedStyle: textStyles.textStyle4,
              colorLineSelected: colorValue.leafGreen),
          const SettingsPage()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: colorValue.softGrey,
      initPositionSelected: 0,
      slidePercent: 50,
      disableAppBarDefault: true,
    );
  }
}
