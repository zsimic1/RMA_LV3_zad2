import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lista_poznatih/screens/addNewPerson.dart';
import 'package:lista_poznatih/database/moor_database.dart';

void main() => runApp(MaterialApp(home: Lists()));

class Lists extends StatefulWidget {
  @override
  _ListsState createState() => new _ListsState();
}

class _ListsState extends State<Lists> {
  int count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Famous people in IT'),
        centerTitle: true,
        elevation: 0,
      ),
      body: StreamBuilder(
          stream: AppDatabase().watchAllPeople(),
          builder: (context, AsyncSnapshot<List<Person>> snapshot) {
            if(snapshot.hasData){
              count = snapshot.data.length;
            }
            else{
              count = 0;
            }
            return ListView.builder(
                itemCount: count,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onLongPress: () {
                      Widget cancelButton = TextButton(
                        child: Text("Cancel"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      );
                      Widget continueButton = TextButton(
                        child: Text("Continue"),
                        onPressed: () {
                          setState(() {
                            AppDatabase().deletePerson(snapshot.data[index]);
                            Navigator.of(context).pop();
                          });
                        },
                      );

                      AlertDialog alert = AlertDialog(
                        title: Text("Warning"),
                        content: Text("Selected item will be deleted"),
                        actions: [
                          cancelButton,
                          continueButton,
                        ],
                      );

                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    },
                    onTap: () {
                      final snackBar = SnackBar(
                          content: Text(randomGenerator(snapshot.data[index].quote1, snapshot.data[index].quote2, snapshot.data[index].quote3)),
                          duration: const Duration(milliseconds: 700));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        color: Colors.blue[400],
                        height: 180,
                        padding: const EdgeInsets.all(5),
                        child: Row(children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: FileImage(File(snapshot.data[index].filePath)),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Expanded(
                            flex: 14,
                            child: Container(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(snapshot.data[index].name,
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      )),
                                  SizedBox(height: 5),
                                  Text(snapshot.data[index].date,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      )),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          snapshot.data[index].description,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  );
                },

                );

          }),
      floatingActionButton: FloatingActionButton(
        child: Text('New'),
        onPressed: () async {
          final value = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => newPerson()));
          setState(() {});
        },
      ),
    );
  }

  randomGenerator(String quote1, String quote2, String quote3) {
    List<String> list = [quote1, quote2, quote3];
    return list[Random().nextInt(3)];
  }

}
