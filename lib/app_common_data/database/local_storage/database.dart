import 'dart:async';

import 'package:first_aid/model/emergency_card/emergency_card.dart';
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

  static const String emergencyCardStoreName = 'emergency_card_store';
  static const String emergencyCardKey = 'emergency_card_key';
  var store = StoreRef.main();

  Future<void> putEmergencyCard(EmergencyCard emergencyCard) async {
    try {
      if (_db == null) {
        throw Exception("Database not initialized");
      }
      Map<String, dynamic> data = {
        'owner': emergencyCard.owner?.toJson(),
        'medicalInfo': emergencyCard.medicalInfo?.toJson(),
        'emergencyContacts':
            emergencyCard.emergencyContacts.map((e) => e.toJson()).toList(),
        'instructions': emergencyCard.instructions,
        'lastUpdated': emergencyCard.lastUpdated,
        'visibility': emergencyCard.visibility?.toJson(),
      };
      print(data);
      await store.record(emergencyCardKey).put(_db!, data);
    } catch (e) {
      print("####:$e");
    }
  }

  Future<EmergencyCard?> getEmergencyCard() async {
    try {
      if (_db == null) {
        throw Exception("Database not initialized");
      }
      var recordSnapshot = await store
          .record(emergencyCardKey)
          .get(_db!) as Map<String, dynamic>?;
      if (recordSnapshot != null) {
        return EmergencyCard.fromJson(recordSnapshot);
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
