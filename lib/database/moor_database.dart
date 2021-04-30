import 'package:moor_flutter/moor_flutter.dart';
part 'moor_database.g.dart';

@DataClassName('Person')
class People extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 30)();
  TextColumn get date => text().withLength(min: 1, max: 15)();
  TextColumn get description => text().withLength(min: 5, max: 216)();
  TextColumn get quote1 => text().withLength(min: 5, max: 80)();
  TextColumn get quote2 => text().withLength(min: 5, max: 80)();
  TextColumn get quote3 => text().withLength(min: 5, max: 80)();
  TextColumn get filePath => text()();
}

@UseMoor(tables: [People])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true));
  @override
  int get schemaVersion => 1;

  Future<List<Person>> getAllPeople() => select(people).get();
  Stream<List<Person>> watchAllPeople() => select(people).watch();
  Future insertPerson(Person person) => into(people).insert(person);
  Future updatePerson(Person person) => update(people).replace(person);
  Future deletePerson(Person person) => delete(people).delete(person);

}
