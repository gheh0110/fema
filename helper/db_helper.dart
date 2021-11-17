import 'dart:async';
import 'dart:io' as io;
import 'package:fema/models/users.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DBHelper {
  static Database? _db;
  Future<Database> get db async =>
      _db ??= await initDb();


  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "fema.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        "CREATE TABLE Userdata(id INTEGER PRIMARY KEY, gender TEXT, birthdate DATETIME, height TEXT,weight TEXT, goal TEXT, workout_per_week TEXT, meal_plan TEXT, how_many_weeks TEXT, meal_category TEXT)");
    print("Created tables");
  }

  void saveUserdata(Userdata userdata) async {
    var dbClient = await db;
    await dbClient.transaction((txn) async {
      return await txn.rawInsert(
          'INSERT INTO Userdata(gender, birthdate, height, weight, goal,workout_per_week, meal_plan, how_many_weeks, meal_category  ) VALUES('
              '\'' +
              userdata.gender +
              '\'' +
              ',' +
              '\'' +
              userdata.birthdate +
              '\'' +
              ',' +
              '\'' +
              userdata.height +
              '\'' +
              ',' +
              '\'' +
              userdata.weight +
              '\'' +
              '\'' +
              userdata.goal +
              '\'' +
              '\'' +
              userdata.workout_per_week +
              '\'' +
              '\'' +
              userdata.meal_plan +
              '\'' +
              '\'' +
              userdata.how_many_weeks +
              '\'' +
              '\'' +
              userdata.meal_category +
              '\'' +
              ')');
    });
  }

  Future<List<Userdata>> getUserdatas() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Userdata');
    List<Userdata> userdatas = [];
    for (int i = 0; i < list.length; i++) {
      userdatas.add(Userdata(
        list[i]["gender"],
        list[i]["birthdate"],
        list[i]["height"],
        list[i]["weight"],
        list[i]["goal"],
        list[i]["workout_per_week"],
        list[i]["meal_plan"],
        list[i]["how_many_weeks"],
        list[i]["meal_category"],
      ));
    }
    print(userdatas.length);
    return userdatas;
  }
  
}