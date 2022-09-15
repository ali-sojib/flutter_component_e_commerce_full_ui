import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../constants/constants.dart';
import '../sidebar_pages/about_us_page.dart';
import '../sidebar_pages/order_page.dart';
import '../sidebar_pages/privacy_policy.dart';
import '../sidebar_pages/settings_page.dart';
import '../sidebar_pages/wallet_page.dart';
import 'entrypoint.dart';
import 'sidebar.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  /// Used for the sidebar drawer
  late ZoomDrawerController _drawerController;

  _toggleDrawer() {
    _drawerController.toggle?.call();
    setState(() {});
  }

  /// This will be used in the side screen
  late final IconButton? _drawerButton = IconButton(
    onPressed: () {
      _drawerController.toggle?.call();
      setState(() {});
    },
    icon: Image.asset(AppImages.sideBar, height: 24, width: 24),
  );

  /// Current Selected Menu
  int _currentSelected = 0;

  /// These menus are seperated from the main bottom section menu
  /// These are sidebar pages which are independent from main UI
  List<Widget> _sidebarPages = [];
  _initializeSideBarMenus() {
    _sidebarPages = [
      /// Entry Point is the main and first home of the app
      EntryPointUI(backButton: _drawerButton),
      WalletPage(backButton: _drawerButton),
      OrderPage(backButton: _drawerButton),
      AbouUsPage(backButton: _drawerButton),
      PrivacyPolicyPage(backButton: _drawerButton),
      SettingsPage(backButton: _drawerButton)
    ];
  }

  /// Sidebar Menu Tap
  void _onSideBarMenuTap(int index) {
    _currentSelected = index;
    _toggleDrawer();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _drawerController = ZoomDrawerController();
    _initializeSideBarMenus();
  }

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _drawerController,

      /// Used For Animation
      mainScreen: PageTransitionSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation, secondAnimation) {
          return SharedAxisTransition(
            child: child,
            animation: animation,
            secondaryAnimation: secondAnimation,
            transitionType: SharedAxisTransitionType.vertical,
          );
        },
        child: _sidebarPages[_currentSelected],
      ),
      menuScreen: SiderBarSection(
        currentSelected: _currentSelected,
        onSelected: _onSideBarMenuTap,
      ),
      slideWidth: MediaQuery.of(context).size.width / 2,
      showShadow: true,
      angle: -24,
      boxShadow: [
        BoxShadow(
          blurRadius: 15,
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 0,
        )
      ],
    );
  }
}
