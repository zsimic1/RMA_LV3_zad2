// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Person extends DataClass implements Insertable<Person> {
  final int id;
  final String name;
  final String date;
  final String description;
  final String quote1;
  final String quote2;
  final String quote3;
  final String filePath;
  Person(
      {@required this.id,
      @required this.name,
      @required this.date,
      @required this.description,
      @required this.quote1,
      @required this.quote2,
      @required this.quote3,
      @required this.filePath});
  factory Person.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Person(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      date: stringType.mapFromDatabaseResponse(data['${effectivePrefix}date']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      quote1:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}quote1']),
      quote2:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}quote2']),
      quote3:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}quote3']),
      filePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}file_path']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<String>(date);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || quote1 != null) {
      map['quote1'] = Variable<String>(quote1);
    }
    if (!nullToAbsent || quote2 != null) {
      map['quote2'] = Variable<String>(quote2);
    }
    if (!nullToAbsent || quote3 != null) {
      map['quote3'] = Variable<String>(quote3);
    }
    if (!nullToAbsent || filePath != null) {
      map['file_path'] = Variable<String>(filePath);
    }
    return map;
  }

  PeopleCompanion toCompanion(bool nullToAbsent) {
    return PeopleCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      quote1:
          quote1 == null && nullToAbsent ? const Value.absent() : Value(quote1),
      quote2:
          quote2 == null && nullToAbsent ? const Value.absent() : Value(quote2),
      quote3:
          quote3 == null && nullToAbsent ? const Value.absent() : Value(quote3),
      filePath: filePath == null && nullToAbsent
          ? const Value.absent()
          : Value(filePath),
    );
  }

  factory Person.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Person(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      date: serializer.fromJson<String>(json['date']),
      description: serializer.fromJson<String>(json['description']),
      quote1: serializer.fromJson<String>(json['quote1']),
      quote2: serializer.fromJson<String>(json['quote2']),
      quote3: serializer.fromJson<String>(json['quote3']),
      filePath: serializer.fromJson<String>(json['filePath']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'date': serializer.toJson<String>(date),
      'description': serializer.toJson<String>(description),
      'quote1': serializer.toJson<String>(quote1),
      'quote2': serializer.toJson<String>(quote2),
      'quote3': serializer.toJson<String>(quote3),
      'filePath': serializer.toJson<String>(filePath),
    };
  }

  Person copyWith(
          {int id,
          String name,
          String date,
          String description,
          String quote1,
          String quote2,
          String quote3,
          String filePath}) =>
      Person(
        id: id ?? this.id,
        name: name ?? this.name,
        date: date ?? this.date,
        description: description ?? this.description,
        quote1: quote1 ?? this.quote1,
        quote2: quote2 ?? this.quote2,
        quote3: quote3 ?? this.quote3,
        filePath: filePath ?? this.filePath,
      );
  @override
  String toString() {
    return (StringBuffer('Person(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('date: $date, ')
          ..write('description: $description, ')
          ..write('quote1: $quote1, ')
          ..write('quote2: $quote2, ')
          ..write('quote3: $quote3, ')
          ..write('filePath: $filePath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              date.hashCode,
              $mrjc(
                  description.hashCode,
                  $mrjc(
                      quote1.hashCode,
                      $mrjc(quote2.hashCode,
                          $mrjc(quote3.hashCode, filePath.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Person &&
          other.id == this.id &&
          other.name == this.name &&
          other.date == this.date &&
          other.description == this.description &&
          other.quote1 == this.quote1 &&
          other.quote2 == this.quote2 &&
          other.quote3 == this.quote3 &&
          other.filePath == this.filePath);
}

class PeopleCompanion extends UpdateCompanion<Person> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> date;
  final Value<String> description;
  final Value<String> quote1;
  final Value<String> quote2;
  final Value<String> quote3;
  final Value<String> filePath;
  const PeopleCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.date = const Value.absent(),
    this.description = const Value.absent(),
    this.quote1 = const Value.absent(),
    this.quote2 = const Value.absent(),
    this.quote3 = const Value.absent(),
    this.filePath = const Value.absent(),
  });
  PeopleCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required String date,
    @required String description,
    @required String quote1,
    @required String quote2,
    @required String quote3,
    @required String filePath,
  })  : name = Value(name),
        date = Value(date),
        description = Value(description),
        quote1 = Value(quote1),
        quote2 = Value(quote2),
        quote3 = Value(quote3),
        filePath = Value(filePath);
  static Insertable<Person> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<String> date,
    Expression<String> description,
    Expression<String> quote1,
    Expression<String> quote2,
    Expression<String> quote3,
    Expression<String> filePath,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (date != null) 'date': date,
      if (description != null) 'description': description,
      if (quote1 != null) 'quote1': quote1,
      if (quote2 != null) 'quote2': quote2,
      if (quote3 != null) 'quote3': quote3,
      if (filePath != null) 'file_path': filePath,
    });
  }

  PeopleCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> date,
      Value<String> description,
      Value<String> quote1,
      Value<String> quote2,
      Value<String> quote3,
      Value<String> filePath}) {
    return PeopleCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      date: date ?? this.date,
      description: description ?? this.description,
      quote1: quote1 ?? this.quote1,
      quote2: quote2 ?? this.quote2,
      quote3: quote3 ?? this.quote3,
      filePath: filePath ?? this.filePath,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (quote1.present) {
      map['quote1'] = Variable<String>(quote1.value);
    }
    if (quote2.present) {
      map['quote2'] = Variable<String>(quote2.value);
    }
    if (quote3.present) {
      map['quote3'] = Variable<String>(quote3.value);
    }
    if (filePath.present) {
      map['file_path'] = Variable<String>(filePath.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PeopleCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('date: $date, ')
          ..write('description: $description, ')
          ..write('quote1: $quote1, ')
          ..write('quote2: $quote2, ')
          ..write('quote3: $quote3, ')
          ..write('filePath: $filePath')
          ..write(')'))
        .toString();
  }
}

class $PeopleTable extends People with TableInfo<$PeopleTable, Person> {
  final GeneratedDatabase _db;
  final String _alias;
  $PeopleTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 30);
  }

  final VerificationMeta _dateMeta = const VerificationMeta('date');
  GeneratedTextColumn _date;
  @override
  GeneratedTextColumn get date => _date ??= _constructDate();
  GeneratedTextColumn _constructDate() {
    return GeneratedTextColumn('date', $tableName, false,
        minTextLength: 1, maxTextLength: 15);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, false,
        minTextLength: 5, maxTextLength: 216);
  }

  final VerificationMeta _quote1Meta = const VerificationMeta('quote1');
  GeneratedTextColumn _quote1;
  @override
  GeneratedTextColumn get quote1 => _quote1 ??= _constructQuote1();
  GeneratedTextColumn _constructQuote1() {
    return GeneratedTextColumn('quote1', $tableName, false,
        minTextLength: 5, maxTextLength: 80);
  }

  final VerificationMeta _quote2Meta = const VerificationMeta('quote2');
  GeneratedTextColumn _quote2;
  @override
  GeneratedTextColumn get quote2 => _quote2 ??= _constructQuote2();
  GeneratedTextColumn _constructQuote2() {
    return GeneratedTextColumn('quote2', $tableName, false,
        minTextLength: 5, maxTextLength: 80);
  }

  final VerificationMeta _quote3Meta = const VerificationMeta('quote3');
  GeneratedTextColumn _quote3;
  @override
  GeneratedTextColumn get quote3 => _quote3 ??= _constructQuote3();
  GeneratedTextColumn _constructQuote3() {
    return GeneratedTextColumn('quote3', $tableName, false,
        minTextLength: 5, maxTextLength: 80);
  }

  final VerificationMeta _filePathMeta = const VerificationMeta('filePath');
  GeneratedTextColumn _filePath;
  @override
  GeneratedTextColumn get filePath => _filePath ??= _constructFilePath();
  GeneratedTextColumn _constructFilePath() {
    return GeneratedTextColumn(
      'file_path',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, name, date, description, quote1, quote2, quote3, filePath];
  @override
  $PeopleTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'people';
  @override
  final String actualTableName = 'people';
  @override
  VerificationContext validateIntegrity(Insertable<Person> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date'], _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('quote1')) {
      context.handle(_quote1Meta,
          quote1.isAcceptableOrUnknown(data['quote1'], _quote1Meta));
    } else if (isInserting) {
      context.missing(_quote1Meta);
    }
    if (data.containsKey('quote2')) {
      context.handle(_quote2Meta,
          quote2.isAcceptableOrUnknown(data['quote2'], _quote2Meta));
    } else if (isInserting) {
      context.missing(_quote2Meta);
    }
    if (data.containsKey('quote3')) {
      context.handle(_quote3Meta,
          quote3.isAcceptableOrUnknown(data['quote3'], _quote3Meta));
    } else if (isInserting) {
      context.missing(_quote3Meta);
    }
    if (data.containsKey('file_path')) {
      context.handle(_filePathMeta,
          filePath.isAcceptableOrUnknown(data['file_path'], _filePathMeta));
    } else if (isInserting) {
      context.missing(_filePathMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Person map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Person.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PeopleTable createAlias(String alias) {
    return $PeopleTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $PeopleTable _people;
  $PeopleTable get people => _people ??= $PeopleTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [people];
}
