import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/screens/prayer/cubit/prayer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';

import '../../../app_common_data/export.dart';
import '../../../shared_customization/export.dart';

class PrayerPlayWidget extends StatefulWidget {
  final PrayerState state;

  const PrayerPlayWidget({
    super.key,
    required this.state,
  });

  @override
  State<PrayerPlayWidget> createState() => _PrayerPlayWidgetState();
}

class _PrayerPlayWidgetState extends State<PrayerPlayWidget> {
  late BuildContext _context;
  late AudioPlayer player = AudioPlayer();
  PlayerState? _playerState;
  Duration? _duration;
  Duration? _position;

  StreamSubscription? _durationSubscription;
  StreamSubscription? _positionSubscription;
  StreamSubscription? _playerCompleteSubscription;
  StreamSubscription? _playerStateChangeSubscription;

  bool get _isPlaying => _playerState == PlayerState.playing;

  bool get _isPaused => _playerState == PlayerState.paused;

  String get _durationText => _duration?.toString().split('.').first ?? '';

  String get _positionText => _position?.toString().split('.').first ?? '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await playU(widget.state.currentFile?.url ?? "");
      _playerState = player.state;
      player.getDuration().then(
            (value) => setState(() {
              _duration = value;
            }),
          );
      player.getCurrentPosition().then(
            (value) => setState(() {
              _position = value;
            }),
          );
      _initStreams();
    });
  }

  void _initStreams() {
    _durationSubscription = player.onDurationChanged.listen((duration) {
      setState(() => _duration = duration);
    });

    _positionSubscription = player.onPositionChanged.listen(
      (p) => setState(() => _position = p),
    );

    _playerCompleteSubscription = player.onPlayerComplete.listen((event) {
      setState(() {
        _playerState = PlayerState.stopped;
        _position = Duration.zero;
      });
    });

    _playerStateChangeSubscription =
        player.onPlayerStateChanged.listen((state) {
      setState(() {
        _playerState = state;
      });
    });
  }

  Future<void> playU(String url) async {
    try {
      await player.stop(); // dừng bài cũ nếu có
      await player.play(UrlSource(url));
      setState(() {
        _playerState = PlayerState.playing;
        _position = Duration.zero;
      });
    } catch (e) {}
  }

  Future<void> _play() async {
    try {
      await player.resume();
      setState(() => _playerState = PlayerState.playing);
    } catch (e) {}
  }

  Future<void> _pause() async {
    await player.pause();
    setState(() => _playerState = PlayerState.paused);
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    // Subscriptions only can be closed asynchronously,
    // therefore events can occur after widget has been disposed.
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return AppContainer(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ///
          /// SELECT FILE
          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 8,
            children: [
              Expanded(
                child: AppDropdownButton(
                  backgroundColor: AppColors.gray300,
                  borderColor: AppColors.gray300,
                  onChanged: (file) {
                    _context.read<PrayerCubit>().updateState(
                        (state) => state.copyWith(currentFile: file));
                    playU(file?.url ?? "");
                  },
                  value: widget.state.currentFile,
                  isExpanded: true,
                  items: widget.state.files.map((file) {
                    return DropdownItemModel(
                      value: file,
                      label: file.name ?? "",
                    );
                  }).toList(),
                  selectedCondition: (_) => false,
                ),
              ),
              if (widget.state.currentFile != null)
                GestureDetector(
                  onTap: () {
                    showConfirmDialog(
                      context,
                      title: i18n.CommonAction.Download,
                      content: i18n.CommonNotiAction.DownloadFile,
                      onAccept: () async {
                        var cancel = showLoading();
                        bool isSuccess = await FileHelpers().saveFileToLocal(
                            widget.state.currentFile!.url!,
                            widget.state.currentFile!.name!);
                        if (isSuccess) {
                          cancel();
                          showSuccessBanner(
                              content: i18n.CommonNotiAction
                                  .DownloadFileSuccessfully(
                                      filename:
                                          widget.state.currentFile!.name!));
                        } else {
                          cancel();
                          showErrorBanner(
                              content: i18n.CommonNotiAction.Failed);
                        }
                      },
                    );
                  },
                  child: AppContainer(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.gray300,
                    padding: EdgeInsets.all(12),
                    child: Assets.icons.icDownload.svg(),
                  ),
                ),
            ],
          ),

          SizedBox(height: 8),
          AppContainer(
            width: 1.sw,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              spacing: 12,
              children: [
                GestureDetector(
                  onTap: _isPlaying ? null : _play,
                  child: Assets.icons.icPlay.svg(
                    colorFilter: ColorFilter.mode(
                        _isPlaying ? AppColors.gray500 : AppColors.blue600,
                        BlendMode.srcIn),
                    width: 24,
                    height: 24,
                  ),
                ),
                GestureDetector(
                  onTap: _isPlaying ? _pause : null,
                  child: Assets.icons.icPause.svg(
                    colorFilter: ColorFilter.mode(
                        _isPlaying ? AppColors.blue600 : AppColors.gray500,
                        BlendMode.srcIn),
                    width: 24,
                    height: 24,
                  ),
                ),

                ///
                /// SLIDER
                ///
                Expanded(
                  child: Slider(
                    onChanged: (value) {
                      final duration = _duration;
                      if (duration == null) {
                        return;
                      }
                      final position = value * duration.inMilliseconds;
                      player.seek(Duration(milliseconds: position.round()));
                    },
                    value: (_position != null &&
                            _duration != null &&
                            _position!.inMilliseconds > 0 &&
                            _position!.inMilliseconds <
                                _duration!.inMilliseconds)
                        ? _position!.inMilliseconds / _duration!.inMilliseconds
                        : 0.0,
                  ),
                ),

                Text(
                  _position != null
                      ? '$_positionText / $_durationText'
                      : _duration != null
                          ? _durationText
                          : '',
                  style: AppTextStyle.textSecondary14W500
                      .copyWith(color: AppColors.white),
                ),
              ],
            ),
          ),

          ///
          ///
          /// S
          SizedBox(height: 8),
          AppContainer(
            width: 1.sw,
            height: 30,
            child: Marquee(
              text: i18n.Prayer.Note,
              style: AppTextStyle.textSecondary14W500
                  .copyWith(color: AppColors.yellow500),
              scrollAxis: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              blankSpace: 50.0,
              velocity: 25.0,
              pauseAfterRound: Duration(milliseconds: 100),
              startPadding: 10.0,
              accelerationDuration: Duration(seconds: 1),
              accelerationCurve: Curves.linear,
              decelerationDuration: Duration(milliseconds: 500),
              decelerationCurve: Curves.easeOut,
            ),
          )
        ],
      ),
    );
  }
}
