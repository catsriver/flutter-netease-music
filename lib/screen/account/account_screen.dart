import 'package:flutter/material.dart';

import '../../widgets/common/svg_icon.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的'),
      ),
      body: const Center(
        child: SvgIcon(SvgIcons.alarm),
      ),
    );
  }
}
