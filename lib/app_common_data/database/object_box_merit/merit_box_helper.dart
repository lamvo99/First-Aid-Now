import 'package:first_aid/model/merit/merit.dart';
import 'package:first_aid/model/object_box/objectbox.g.dart';
import 'package:path_provider/path_provider.dart';

class MeritBoxHelper {
  /// Singleton instance
  static final MeritBoxHelper _instance = MeritBoxHelper._internal();

  factory MeritBoxHelper() => _instance;

  late Store _store;
  late Box<MeritEntity> meritBox;

  MeritBoxHelper._internal();

  /// Init ObjectBox (gọi hàm này trước khi dùng app hoặc repository)
  Future<void> init() async {
    final directory = await getApplicationDocumentsDirectory();
    final storeDirectory = '${directory.path}/objectbox';

    _store = openStore(
      directory: storeDirectory,
    );
    meritBox = _store.box<MeritEntity>();
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
