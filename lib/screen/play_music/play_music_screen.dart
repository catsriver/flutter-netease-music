import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:netease_cloud_music/util/formatCount.dart';

import '../../models/artist.dart';
import '../../res/resources.dart';
import '../../util/formatTime.dart';
import '../../widgets/common/svg_icon.dart';

class PlayMusicScreen extends StatefulWidget {
  static const routeName = '/player';

  const PlayMusicScreen({
    Key? key,
    required this.name,
    required this.id,
    required this.coverImg,
    required this.artists,
    required this.commentCounts,
    required this.coverCounts,
  }) : super(key: key);

  final String name; // 歌曲名称
  final int id; // 歌曲id
  final String coverImg; // 歌曲封面
  final List<Artist> artists; // 歌手
  final int commentCounts; // 评论数
  final int coverCounts; // 翻唱数

  @override
  State<PlayMusicScreen> createState() => _PlayMusicScreenState();
}

class _PlayMusicScreenState extends State<PlayMusicScreen> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  String url =
      'http://m801.music.126.net/20220917161315/beb8878b4e8878b2f6ce0cf57b0ca310/jdymusic/obj/wo3DlMOGwrbDjj7DisKw/14096406890/4456/9d4d/a682/71a28cacdbe22858db9b91cb85d6d708.mp3';

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  void initState() {
    /// Listen to states: playing, paused, stopped
    audioPlayer.onPlayerStateChanged.listen((state) {
      isPlaying = state == PlayerState.playing;
    });

    /// Listen to audio duration
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    /// Listen to audio position
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

    super.initState();
  }

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
            onPressed: () {
              GoRouter.of(context).pop();
            },
          ),
          title: Column(
            children: [
              Text(
                widget.name,
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
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    widget.coverImg,
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
                                  formatCount(widget.coverCounts),
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
                                  formatCount(widget.commentCounts),
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
                          formatTime(position),
                          style: TextStyle(
                            fontSize: Dimens.fontSp18,
                            color: Colours.fontColor4,
                          ),
                        ),
                        Expanded(
                          child: Slider(
                            min: 0,
                            max: duration.inSeconds.toDouble(),
                            value: position.inSeconds.toDouble(),
                            onChanged: (value) async {
                              final position = Duration(seconds: value.toInt());
                              await audioPlayer.seek(position);

                              /// Play audio if was paused
                              await audioPlayer.resume();
                            },
                          ),
                        ),
                        Text(
                          formatTime(duration),
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
                            onPressed: () async {
                              if (isPlaying) {
                                await audioPlayer.pause();
                              } else {
                                await audioPlayer.play(UrlSource(url));
                              }
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
