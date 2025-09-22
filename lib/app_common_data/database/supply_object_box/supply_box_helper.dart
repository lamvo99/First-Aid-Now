import 'package:first_aid/data/supply_data.dart';
import 'package:first_aid/model/supply/supply.dart';
import 'package:first_aid/model/object_box/objectbox.g.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:path_provider/path_provider.dart';

class SupplyBoxHelper {
  /// Singleton instance
  static final SupplyBoxHelper _instance = SupplyBoxHelper._internal();

  factory SupplyBoxHelper() => _instance;

  late Store _store;
  late Box<SupplyEntity> supplyBox;

  SupplyBoxHelper._internal();

  /// Init ObjectBox (gọi hàm này trước khi dùng app hoặc repository)
  Future<void> init() async {
    final directory = await getApplicationDocumentsDirectory();
    final storeDirectory = '${directory.path}/supply_box';

    _store = openStore(
      directory: storeDirectory,
    );
    supplyBox = _store.box<SupplyEntity>();
    final query = supplyBox // Query
        .query()
        .build();
    final List<SupplyEntity> listMerit = query.find();
    if (listMerit.isEmptyOrNull) {
      List<SupplyEntity> listSupply =
          suppliesData.map((e) => SupplyEntity.formModel(e)).toList();
      supplyBox.putMany(listSupply);
    }
  }

  /// Truy cập Store trực tiếp
  Store get store => _store;

  /// Truy cập box theo kiểu (type-safe)
  Box<MeritEntity> box<MeritEntity>() => _store.box<MeritEntity>();

  /// Đóng Store khi thoát app
  Future<void> close() async {
    _store.close();
  }

  /// Xoá toàn bộ dữ liệu trong box
  Future<void> clear<T>() async {
    box<T>().removeAll();
  }
}
