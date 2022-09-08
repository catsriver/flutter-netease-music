import 'package:flutter/material.dart';

import 'widgets/banner_item.dart';
import 'widgets/body.dart';
import 'widgets/header.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Header(),
      body: Body(
        children: [
          // Banner
          BannerItem(
            imgUrl:
                'http://p1.music.126.net/BcZXvoTKen7fPMDXezzScQ==/109951167853780577.jpg',
            title: '广告',
            titleColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
