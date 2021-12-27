import 'package:sqflite/sqflite.dart' as sql;
//import 'package:path/path.dart';

class SQLHelper{
  static Future<void> createTables(sql.Database database) async{
    await database.execute("""Create TABLE itemdata(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    itemname TEXT, 
    itemicon TEXT
    )
    """);
    await database.rawQuery("""INSERT INTO itemdata (itemname , itemicon) 
    VALUES('Bangladesh Tour', 'e902'),
    ('Foreign Tour', 'e908'),
    ('Tour Blog', 'e905'),
    ('Favourite Place', 'e90a'),
    ('Video', 'e903'),
    ('Saved Info', 'e901');
    """);

    await database.rawQuery("""Create TABLE itemdatalist(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT, 
    itemdataname TEXT
    );
    """);
    await database.rawQuery("""INSERT INTO itemdatalist (name , itemdataname) 
    VALUES("Cox's Bazar", 'Bangladesh Tour'),
    ('Kishoregonj', 'Bangladesh Tour'),
    ('Kurigram', 'Bangladesh Tour'),
    ('Cumilla', 'Bangladesh Tour'),
    ('Kustia', 'Bangladesh Tour'),
    ('Khagrachori', 'Bangladesh Tour'),
    ('Khulna', 'Bangladesh Tour'),
    ('Gaibandha', 'Bangladesh Tour'),
    ('Gazipur', 'Bangladesh Tour'),
    ('Gopalgonj', 'Bangladesh Tour'),
    ('Chattagram', 'Bangladesh Tour'),
    ('Chandpur', 'Bangladesh Tour'),
    ('Chapainababgonj', 'Bangladesh Tour'),
    ('Chuadanga', 'Bangladesh Tour'),
    ('Joypurhat', 'Bangladesh Tour'),
    ('Jamalpur', 'Bangladesh Tour'),
    ('Jhalkathi', 'Bangladesh Tour'),
    ('Jhinaidaha', 'Bangladesh Tour'),
    ('Tangaial', 'Bangladesh Tour'),
    ('Thakurgoan', 'Bangladesh Tour'),
    ('Dhaka', 'Bangladesh Tour'),
    ('Dinajpur', 'Bangladesh Tour'),
    ('Norail', 'Bangladesh Tour'),
    ('Nator', 'Bangladesh Tour'),
    
    ('Australia', 'Foreign Tour'),
    ('Arab Amirat', 'Foreign Tour'),
    ('Indonesia', 'Foreign Tour'),
    ('Katar', 'Foreign Tour'),
    ('China', 'Foreign Tour'),
    ('Japan', 'Foreign Tour'),
    ('Turoska', 'Foreign Tour'),
    ('Thailand', 'Foreign Tour'),
    ('Nepal', 'Foreign Tour'),
    ('Filipine', 'Foreign Tour'),
    ('France', 'Foreign Tour'),
    ('India', 'Foreign Tour'),
    ('Vietnam', 'Foreign Tour'),
    ('Vutan', 'Foreign Tour'),
    ('Maldip', 'Foreign Tour'),
    ('Malyesia', 'Foreign Tour'),
    ('Mishore', 'Foreign Tour'),
    ('Srilanka', 'Foreign Tour'),
    ('Singapur', 'Foreign Tour'),
    ('Suizarland', 'Foreign Tour');
    """);

  }




  static Future<sql.Database> db() async{
    return sql.openDatabase(
      'tourguide.db', version: 1,
      onCreate: (sql.Database database, int version) async{
        await createTables(database);
      }
    );
  }

  //Read all items (itemdata Table)
  static Future<List<Map<String, dynamic>>> getitemdatainfo() async{
    final db = await SQLHelper.db();
    var result;
      result = await db.rawQuery("Select * FROM itemdata Where 1;");
      return result;
  }

}


