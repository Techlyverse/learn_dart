import 'dart:developer';

import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:path/path.dart';

class SembastDatabase {
  static final SembastDatabase _instance = SembastDatabase._internal();

  SembastDatabase._internal();

  factory SembastDatabase() => _instance;

  Database? db;

  final DatabaseFactory _dbFactory = databaseFactoryIo;

  final StoreRef<int, Map<String, dynamic>> store =
      intMapStoreFactory.store('examples');

  Future<void> initDb() async {
    if (db == null) {
      final dir = await getApplicationDocumentsDirectory();
      await dir.create(recursive: true);
      final dbPath = join(dir.path, 'larndart.db');
      db = await _dbFactory.openDatabase(dbPath);
      print("the db $db");

      if (db != null) {
        var store = StoreRef.main();
        await store.record('title').put(db!, 'Simple application');
        await store.record('version').put(db!, 10);
        await store.record('settings').put(db!, {'offline': true});

// read values
        var title = await store.record('title').get(db!) as String;
        var version = await store.record('version').get(db!) as int;
        var settings = await store.record('settings').get(db!) as Map;
        log("the db var $title $version $settings and $db and store $store ");

        await store.record('version').delete(db!);
      }
    }
    // return _db!;
  }
}
