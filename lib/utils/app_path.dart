import 'dart:io';
import 'package:path_provider/path_provider.dart';

/// For Android Auto Backup dirs see https://developer.android.com/guide/topics/data/autobackup#Files
/// Different Flutter directories https://pub.dev/documentation/path_provider/latest/path_provider/getApplicationDocumentsDirectory.html
/// Android Path Cheat sheet https://gist.github.com/granoeste/5574148
/// Android (some paths seem to differ from docs):
/// getApplicationDocumentsDirectory() -> /data/user/0/co.insta_store.Club_social/app_flutter
/// Use only for android and IOS
class AppPath {
  /// Does not create file
  static Future<String> getLogFilePath() async {
    final directory = await getApplicationDocumentsDirectory();
    return '${directory.path}/log.txt';
  }

  /// Android seems to have getDatabasePath but that's not used here

  static Future<Directory> getDatabaseDirectory() async {
    final base = await getApplicationDocumentsDirectory();
    final dbDirectory =
        Directory('${base.path}/$_storageRelativePath/$_databaseDirectoryName');
    return dbDirectory;
  }

  /// Home for all hive boxes
  static String get _storageRelativePath => 'storage';

  /// /hive/db is where all database-specific boxes are stored
  static String get _databaseDirectoryName => 'db';

  static Future<Directory> createDatabaseDirectory() async {
    final base = await getApplicationDocumentsDirectory();
    final dbDirectory =
        Directory('${base.path}/$_storageRelativePath/$_databaseDirectoryName');
    await dbDirectory.create(recursive: true);
    return dbDirectory;
  }

  /// Relative to AppDocumentsDirectory
  static String getStorageRelativePath() => _storageRelativePath;

  /// Relative to AppDocumentsDirectory
  static String getDatabaseRelativePath() =>
      '$_storageRelativePath/$_databaseDirectoryName';

  static Future<Directory> createStorageDirectory() async {
    final base = await getApplicationDocumentsDirectory();
    final dbDirectory = Directory('${base.path}/$_storageRelativePath');
    await dbDirectory.create(recursive: true);
    return dbDirectory;
  }

  static Future<Directory> getAppTemporaryDirectory() async {
    return getTemporaryDirectory();
  }
}
