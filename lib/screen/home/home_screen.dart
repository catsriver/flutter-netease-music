import 'package:flutter/material.dart';
import 'package:netease_cloud_music/screen/account/account_screen.dart';
import 'package:netease_cloud_music/screen/bodcast/bodcast_screen.dart';
import 'package:netease_cloud_music/screen/community/community_screen.dart';
import 'package:netease_cloud_music/screen/search/search_screen.dart';

class HomeScreen extends StatefulWidget {
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
      body: PageView(
        controller: _controller,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
          _controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
        children: const [
          SearchScreen(),
          BodcastScreen(),
          CommunityScreen(),
          AccountScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
          _controller.jumpToPage(index);
        },
        items: const [
          BottomNavigationBarItem(
            label: '发现',
            icon: Icon(Icons.home),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            label: '播客',
            icon: Icon(Icons.broadcast_on_home_sharp),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            label: '社区',
            icon: Icon(Icons.chat_bubble_outline),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            label: '我的',
            icon: Icon(Icons.person),
            tooltip: '',
          ),
        ],
      ),
    );
  }
}
