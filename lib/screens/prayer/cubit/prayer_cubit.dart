// Package imports:
import 'package:bloc/bloc.dart';
import 'package:first_aid/model/files/files.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '/public_providers/config/bloc_base_state.dart';
import '/public_providers/config/update_bloc_base_state.dart';
import '/shared_customization/data/screen_value.dart';

part 'prayer_state.dart';
part 'prayer_cubit.freezed.dart';

class PrayerCubit extends Cubit<PrayerState>
    with UpdateBlocBaseState<PrayerState> {
  PrayerCubit() : super(const PrayerState.initial());

  List<Map<String, dynamic>> listPrayer = [
    {
      "name":"A Di Đà Phật",
      "fileId":"https://ia800206.us.archive.org/14/items/adidaphat0/adidaphat0.mp3"
    },
    {
      "name":"Nam Mô A Di Đà Phật",
      "fileId":"https://ia801901.us.archive.org/23/items/adidaphat1/adidaphat1.mp3"
    },
    {
      "name":"Chú Đại Bi",
      "fileId":"https://ia601605.us.archive.org/8/items/chu_dai_bi/chu_dai_bi.mp3"
    },
    {
      "name":"Kinh Vu Lan Báo Hiếu",
      "fileId":"https://ia801404.us.archive.org/21/items/0001.-kinh-vu-lan/0001.Kinh%20Vu%20Lan.mp3"
    },
    {
      "name":"Kinh Lăng Nghiêm",
      "fileId":"https://ia601702.us.archive.org/15/items/0002.-kinh-lang-nghiem-cong-phu-khuya/0002.Kinh%20Lang%20%20nghiem%20-%20cong%20phu%20khuya.mp3"
    },
    {
      "name":"Kinh Dược Sư",
      "fileId":"https://ia600206.us.archive.org/34/items/0003.-kinh-duoc-su/0003.Kinh%20Duoc%20Su.mp3"
    },
    {
      "name":"Kinh Phổ môn",
      "fileId":"https://ia801905.us.archive.org/30/items/0004.-kinh-pho-mon-nghia-tri-thoat/0004.Kinh-PhoMonNghia_TriThoat.mp3"
    },
    {
      "name":"Diệu pháp liên hoa",
      "fileId":"https://ia601808.us.archive.org/14/items/0000.dieu-phap-lien-hoa/0000.dieu%20phap%20lien%20hoa.mp3"
    },
    {
      "name":"Kinh Tám Điều Từ Tâm",
      "fileId":"https://ia601507.us.archive.org/25/items/0005.-kinh-tam-dieu-tu-tam/0005.Kinh%20Tam%20Dieu%20Tu%20Tam.mp3"
    },
    {
      "name":"Kinh A Di Đà",
      "fileId":"https://ia800207.us.archive.org/19/items/0006.-a-di-da/0006.A%20di%20da.mp3"
    },
    {
      "name":"Kinh Vô Lượng Thọ",
      "fileId":"https://ia801705.us.archive.org/35/items/0007.-thay-tri-thoat-kinh-vo-luong-tho-nghia/0007.ThayTriThoat_KinhVoLuongTho-Nghia.mp3"
    },
    {
      "name":"Kinh Từ Bi Thuỷ Sám",
      "fileId":"https://ia800704.us.archive.org/26/items/0008.tu-bi-thuy-sam/0008.tu%20bi%20thuy%20sam.mp3"
    },
    {
      "name":"Kinh Địa Tạng Bổn Nguyên",
      "fileId":"https://ia601801.us.archive.org/22/items/0009.dia-tang-bon-nguyen/0009.dia%20tang%20bon%20nguyen.mp3"
    },
    {
      "name":"48 Lời Nguyện của Phật A Di Đà",
      "fileId":"https://ia601507.us.archive.org/27/items/0010.48-loi-nguyen/0010.48%20Loi%20Nguyen.mp3"
    },
    {
      "name":"Kinh Lục Tự Di Đà",
      "fileId":"https://ia601808.us.archive.org/33/items/0011.-luc-tu-di-da/0011.Luc%20Tu%20Di%20Da.mp3"
    },
    {
      "name":"Công Phu Khuya",
      "fileId":"https://ia601403.us.archive.org/7/items/cong-phu-khuya/Cong%20Phu%20Khuya.mp3"
    },
    {
      "name":"Kinh A Di Đà cầu siêu",
      "fileId":"https://ia601701.us.archive.org/1/items/kinh-a-di-da-cau-sieu/Kinh%20A%20DI%20DA%20cau%20sieu.mp3"
    },
    {
      "name":"Kinh Báo Hiếu",
      "fileId":"https://ia601808.us.archive.org/30/items/kinh-bao-hieu/Kinh%20bao%20hieu.mp3"
    },
    {
      "name":"Kinh Sám Hối",
      "fileId":"https://ia801905.us.archive.org/9/items/kinh-sam-hoi_202504/Kinh%20sam%20hoi.mp3"
    },
    {
      "name":"Kinh tụng Tống Táng",
      "fileId":"https://ia801605.us.archive.org/33/items/kinh-tung-tong-tang/Kinh%20tung%20tong%20tang.mp3"
    },
  ];

  Future<void> initData() async {
    emit(state.copyWith(status: ScreenValue.init()));

    List<Files> list = listPrayer.map((e) => convertToFile(e)).toList();
    emit(state.copyWith(
      files: list,
      currentFile: list.first
    ));
    emit(state.copyWith(status: ScreenValue.running()));
  }

  Files convertToFile(Map<String, dynamic> map) {
    String url = map["fileId"];
    return Files(
      name: map["name"],
      url: url
    );
  }

  @override
  void resetErrorMessage() => emit(state.copyWith(errorMessage: null));
  @override
  void resetStatus() => emit(state.copyWith(status: null));
}
