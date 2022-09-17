import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../account/account_screen.dart';
import '../bodcast/bodcast_screen.dart';
import '../community/community_screen.dart';
import '../search/search_screen.dart';

import '../../util/keys.dart';
import '../../widgets/app_drawer/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';

  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScaffoldKey,
      body: PageView(
        controller: _controller,
        onPageChanged: _animateToPage,
        children: const [
          SearchScreen(),
          BodcastScreen(),
          CommunityScreen(),
          AccountScreen(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      drawer: const AppDrawer(),
    );
  }

  Theme _buildBottomNavBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _jumpToPage,
        items: const [
          BottomNavigationBarItem(
            label: '发现',
            icon: FaIcon(FontAwesomeIcons.compactDisc),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            label: '播客',
            icon: FaIcon(FontAwesomeIcons.radio),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            label: '社区',
            icon: FaIcon(FontAwesomeIcons.bomb),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            label: '我的',
            icon: FaIcon(FontAwesomeIcons.music),
            tooltip: '',
          ),
        ],
      ),
    );
  }

  void _jumpToPage(int index) {
    setState(() {
      _currentIndex = index;
    });
    _controller.jumpToPage(index);
  }

  void _animateToPage(int index) {
    setState(() {
      _currentIndex = index;
    });
    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }
}
