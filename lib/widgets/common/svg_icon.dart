import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon(
    this.icon, {
    Key? key,
    this.color = const Color(0xFF333333),
    this.size = 24.0,
  }) : super(key: key);

  final SvgIconData icon;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon.assetName,
      width: size,
      height: size,
      color: color,
    );
  }
}

class SvgIconData {
  const SvgIconData(this.assetName);

  final String assetName;
}

class SvgIcons {
  SvgIcons._();

  static const SvgIconData scan = SvgIconData('assets/icons/scan.svg');

  static const SvgIconData mail = SvgIconData('assets/icons/mail.svg');

  static const SvgIconData archor = SvgIconData('assets/icons/archor.svg');

  static const SvgIconData bulb = SvgIconData('assets/icons/bulb.svg');

  static const SvgIconData bookmarks =
      SvgIconData('assets/icons/bookmarks.svg');

  static const SvgIconData shoppingCart =
      SvgIconData('assets/icons/shopping-cart.svg');

  static const SvgIconData ghost = SvgIconData('assets/icons/ghost.svg');

  static const SvgIconData activity = SvgIconData('assets/icons/activity.svg');

  static const SvgIconData brandDiscord =
      SvgIconData('assets/icons/brand-discord.svg');

  static const SvgIconData bellRinging2 =
      SvgIconData('assets/icons/bell-ringing-2.svg');

  static const SvgIconData settings = SvgIconData('assets/icons/settings.svg');

  static const SvgIconData moon = SvgIconData('assets/icons/moon.svg');

  static const SvgIconData clock = SvgIconData('assets/icons/clock.svg');

  static const SvgIconData shirt = SvgIconData('assets/icons/shirt.svg');

  static const SvgIconData headphones =
      SvgIconData('assets/icons/headphones.svg');

  static const SvgIconData deviceDesktopAnalytics =
      SvgIconData('assets/icons/device-desktop-analytics.svg');

  static const SvgIconData ban = SvgIconData('assets/icons/ban.svg');

  static const SvgIconData shieldCheck =
      SvgIconData('assets/icons/shield-check.svg');

  static const SvgIconData alarm = SvgIconData('assets/icons/alarm.svg');

  static const SvgIconData receipt = SvgIconData('assets/icons/receipt.svg');

  static const SvgIconData ticket = SvgIconData('assets/icons/ticket.svg');

  static const SvgIconData headset = SvgIconData('assets/icons/headset.svg');

  static const SvgIconData share = SvgIconData('assets/icons/share.svg');

  static const SvgIconData certificate =
      SvgIconData('assets/icons/certificate.svg');

  static const SvgIconData brandUbuntu =
      SvgIconData('assets/icons/brand-ubuntu.svg');

  static const SvgIconData shieldLock =
      SvgIconData('assets/icons/shield-lock.svg');

  static const SvgIconData alertCircle =
      SvgIconData('assets/icons/alert-circle.svg');

  static const SvgIconData chevronRight =
      SvgIconData('assets/icons/chevron-right.svg');

  static const SvgIconData chevronRightBold =
      SvgIconData('assets/icons/chevron-right-bold.svg');

  static const SvgIconData plus = SvgIconData('assets/icons/plus.svg');
}
