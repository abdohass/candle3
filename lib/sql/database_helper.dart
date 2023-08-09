import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._();
  static Database? _database;

  DatabaseHelper._();

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await _initDB();
    return _database;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'my_database.db');

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE templates(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        resultwax REAL,
        resultfo REAL,
        totalCandles INTEGER
      )
    ''');
  }

  Future<int> insertTemplate(double resultWax, double resultFo, int totalCandles) async {
    final db = await database;
    return await db!.insert(
      'templates',
      {
        'resultwax': resultWax,
        'resultfo': resultFo,
        'totalCandles': totalCandles,
      },
    );
  }

  Future<List<Map<String, dynamic>>> getAllTemplates() async {
    final db = await database;
    return await db!.query('templates');
  }
}
