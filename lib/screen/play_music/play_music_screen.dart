import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/resources.dart';
import '../../widgets/common/svg_icon.dart';

class PlayMusicScreen extends StatefulWidget {
  const PlayMusicScreen({Key? key}) : super(key: key);

  @override
  State<PlayMusicScreen> createState() => _PlayMusicScreenState();
}

class _PlayMusicScreenState extends State<PlayMusicScreen> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topRight,
          colors: [
            Color(0xFF535353),
            Color(0xFF252525),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: Colours.fontColorWihite,
              size: 60.w,
            ),
            onPressed: () {},
          ),
          title: Column(
            children: [
              Text(
                '再见莫妮卡',
                style: TextStyle(
                  fontSize: Dimens.fontSp24,
                  color: Colours.fontColorWihite,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '彭席彦',
                    style: TextStyle(
                      fontSize: Dimens.fontSp24,
                      color: Colours.fontColor4,
                    ),
                  ),
                  const SvgIcon(
                    SvgIcons.chevronRight,
                    color: Colours.fontColor4,
                  ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.share,
                color: Colours.fontColorWihite,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Spacer(flex: 3),

                        Container(
                          width: 408.w,
                          height: 408.w,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(408.w),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'assets/images/disk.png',
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 266.w,
                                height: 266.w,
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'http://p4.music.126.net/SWDOrvO3f6L8Q1xGPTbb6w==/109951163102543599.jpg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const Spacer(flex: 5),

                        // 按钮
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: SvgIcon(
                                SvgIcons.heart,
                                color: Colours.fontColorWihite,
                                size: 36.w,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: SvgIcon(
                                SvgIcons.cloudDownload,
                                size: 36.w,
                                color: Colours.fontColorWihite,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Badge(
                                elevation: 0,
                                badgeColor: Colors.transparent,
                                padding: EdgeInsets.zero,
                                badgeContent: Text(
                                  '77',
                                  style: TextStyle(
                                    fontSize: Dimens.fontSp14,
                                    color: Colours.fontColorWihite,
                                  ),
                                ),
                                child: SvgIcon(
                                  SvgIcons.discover,
                                  size: 36.w,
                                  color: Colours.fontColorWihite,
                                ),
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Badge(
                                elevation: 0,
                                badgeColor: Colors.transparent,
                                padding: EdgeInsets.zero,
                                badgeContent: Text(
                                  '1w+',
                                  style: TextStyle(
                                    fontSize: Dimens.fontSp14,
                                    color: Colours.fontColorWihite,
                                  ),
                                ),
                                child: SvgIcon(
                                  SvgIcons.messageCircle,
                                  size: 36.w,
                                  color: Colours.fontColorWihite,
                                ),
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Badge(
                                badgeColor: Colors.transparent,
                                padding: EdgeInsets.zero,
                                badgeContent: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 2.w),
                                  decoration: BoxDecoration(
                                    color: Colours.fontColor2,
                                    borderRadius: BorderRadius.circular(
                                      Dimens.radiusDp12,
                                    ),
                                  ),
                                  child: Text(
                                    '倍速',
                                    style: TextStyle(
                                      fontSize: Dimens.fontSp10,
                                      color: Colours.fontColorWihite,
                                    ),
                                  ),
                                ),
                                child: SvgIcon(
                                  SvgIcons.dotsVertical,
                                  size: 36.w,
                                  color: Colours.fontColorWihite,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),

                    // 唱头
                    Positioned(
                      left: 250.w,
                      child: Transform.rotate(
                        angle: -4 * pi / 180,
                        origin: Offset(-140.w / 2, -250.h / 2),
                        child: Image.asset(
                          'assets/images/pickup.png',
                          height: 250.h,
                          width: 140.w,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // 底部按钮
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.hGapDp30,
                  vertical: Dimens.vGapDp24,
                ),
                child: Column(
                  children: [
                    // 进度条
                    Row(
                      children: [
                        Text(
                          '00:00',
                          style: TextStyle(
                            fontSize: Dimens.fontSp18,
                            color: Colours.fontColor4,
                          ),
                        ),
                        Expanded(
                          child: Slider(
                            value: 0,
                            onChanged: (value) {},
                          ),
                        ),
                        Text(
                          '03:00',
                          style: TextStyle(
                            fontSize: Dimens.fontSp18,
                            color: Colours.fontColor4,
                          ),
                        ),
                      ],
                    ),

                    Gaps.vGap24,

                    // 控制条
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: SvgIcon(
                            SvgIcons.repeat,
                            size: 36.w,
                            color: Colours.fontColorWihite,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: SvgIcon(
                            SvgIcons.playerSkipBack,
                            size: 36.w,
                            color: Colours.fontColorWihite,
                          ),
                          onPressed: () {},
                        ),
                        DecoratedBox(
                          decoration: ShapeDecoration(
                            shape: CircleBorder(
                              side: BorderSide(
                                color: Colours.fontColorWihite,
                                width: 2.w,
                              ),
                            ),
                          ),
                          child: IconButton(
                            icon: SvgIcon(
                              isPlaying
                                  ? SvgIcons.playerPause
                                  : SvgIcons.playerPlay,
                              size: 36.w,
                              color: Colours.fontColorWihite,
                            ),
                            onPressed: () {
                              setState(() {
                                isPlaying = !isPlaying;
                              });
                            },
                          ),
                        ),
                        IconButton(
                          icon: SvgIcon(
                            SvgIcons.playerSkipForward,
                            size: 36.w,
                            color: Colours.fontColorWihite,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: SvgIcon(
                            SvgIcons.playlist,
                            size: 36.w,
                            color: Colours.fontColorWihite,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
