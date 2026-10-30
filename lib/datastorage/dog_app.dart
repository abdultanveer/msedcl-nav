import 'package:flutter/material.dart';
import 'package:msedcl/datastorage/dog_dao.dart';
import 'package:msedcl/model/dog.dart';


var dogDao = new DogDao();

void main(){
  runApp(MaterialApp(
    home: DogsApp(),
  ));
}

class DogsApp extends StatelessWidget {
const DogsApp({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text('dogs db demo'),),
floatingActionButton: FloatingActionButton(
onPressed: addDog ,
child: Icon(Icons.add),
),
);
}

void addDog() async {
  var dog = Dog(id: 1, name: "german shepherd", age: 3);
  await dogDao.insertDog(dog)    ;
}
}
