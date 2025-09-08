// Package imports:

import 'package:first_aid/model/audio/audio.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../app_common_data/common_data/global_variable.dart';
import '/public_providers/config/bloc_base_state.dart';
import '/public_providers/config/update_bloc_base_state.dart';
import '/shared_customization/data/screen_value.dart';

part 'wooden_fish_state.dart';

part 'wooden_fish_cubit.freezed.dart';

class WoodenFishCubit extends Cubit<WoodenFishState>
    with UpdateBlocBaseState<WoodenFishState> {
  WoodenFishCubit() : super(const WoodenFishState.initial());

  void initData() async {
    emit(state.copyWith(status: ScreenValue.init(), ));
    await getData();
    emit(state.copyWith(status: ScreenValue.running()));
  }

  Future<void> getData() async{
    try {

      String bonkAudio = sp.bonkAudio;
      String bellAuido = sp.bellAudio;
      bool isMoOne = sp.isMoOne;
      bool isBackgroundOne = sp.isBackgroundOne;

      emit(state.copyWith(
        listBonk: listBonk,
        moBonk: listBonk.firstWhere((e) => e.assetsUrl == bonkAudio, orElse: () => listBonk.first),
        listBell: listBell,
        bell: listBell.firstWhere((e) => e.assetsUrl == bellAuido, orElse: () => listBell.first),
        isMoOne: isMoOne,
        isBgOne: isBackgroundOne,
      ));
    } catch (e) {
      print("################");
      print(e);
    }
  }

  List<Audio> listBonk = [
    Audio(
      name: "Âm thanh mõ 1",
      assetsUrl: "audio/mo/bonk1.mp3",
    ),
    Audio(
      name: "Âm thanh mõ 2",
      assetsUrl: "audio/mo/bonk2.mp3",
    ),
    Audio(
      name: "Âm thanh mõ 3",
      assetsUrl: "audio/mo/bonk3.mp3",
    ),
    Audio(
      name: "Âm thanh mõ 4",
      assetsUrl: "audio/mo/bonk4.mp3",
    ),
  ];

  List<Audio> listBell = [
    Audio(
      name: 'Âm thanh chuông 1',
      assetsUrl: "audio/bell/chuong1.mp3",
    ),
    Audio(
      name: 'Âm thanh chuông 1',
      assetsUrl: "audio/bell/chuong1.mp3",
    ),
    Audio(
      name: 'Âm thanh chuông 1',
      assetsUrl: "audio/bell/chuong1.mp3",
    ),
    Audio(
      name: 'Âm thanh chuông 1',
      assetsUrl: "audio/bell/chuong1.mp3",
    ),
  ];

  void createCount() {
    int count = state.count;
    count++;
    emit(state.copyWith(count: count));
  }

  @override
  void resetErrorMessage() => emit(state.copyWith(errorMessage: null));

  @override
  void resetStatus() => emit(state.copyWith(status: null));
}
