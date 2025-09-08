import 'dart:async';

import 'package:first_aid/model/personal_event/personal_event.dart';
import 'package:first_aid/shared_customization/extensions/list_ext.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';

class AppDatabase {
  // Singleton instance
  static final AppDatabase _instance = AppDatabase._internal();

  // Private constructor
  AppDatabase._internal();

  // Factory constructor to return the singleton instance
  factory AppDatabase() {
    return _instance;
  }

  Database? _db;

  // Method to initialize the database
  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);
    final dbPath = join(dir.path, 'my_database.db');
    _db = await databaseFactoryIo.openDatabase(dbPath);
  }

  // Example method to close the database connection
  Future<void> close() async {
    await _db?.close();
    _db = null;
  }

  ///
  /// PERSONAL EVENTS
  ///

  static const String personalEventsStoreName = 'personal_events';
  static const String personalEventsKey = 'personal_events_key';
  var store = StoreRef.main();

  Future<void> putPersonalEvent(List<PersonalEvent> data) async {
    try {
      if (_db == null) {
        throw Exception("Database not initialized");
      }
      List<Map<String, dynamic>> value = data.map((e) => e.toJson()).toList();
      await store.record(personalEventsKey).put(_db!, value);
    } catch (e) {}
  }

  Future<List<PersonalEvent>> getPersonalEvents() async {
    try {
      if (_db == null) {
        throw Exception("Database not initialized");
      }
      var recordSnapshot = await store
          .record(personalEventsKey)
          .get(_db!) as List;
      var result = List.from(recordSnapshot);
      if (result.isNotEmptyOrNull) {
        return result.map((e) => PersonalEvent.fromJson(e)).toList();
      }
      return [];
    } catch (e) {
      return [];
    }
  }
}
