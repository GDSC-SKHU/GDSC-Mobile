import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../assets/Palette.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List<String> todos = [];
  String todoText = '';

  @override
  void initState() {
    super.initState();
    todos.add("item1");
    todos.add("item2");
    todos.add("item3");
    todos.add("item4");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Todos'),
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Palette.todoPointColor,
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: ((context) {
                return AlertDialog(
                  title: Text('Add todoList'),
                  content: TextField(
                    onChanged: (value) {
                      todoText = value;
                    },
                  ),
                  actions: <Widget>[
                    TextButton(
                        onPressed: () {
                          setState(() {
                            todos.add(todoText);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text("Add"))
                  ],
                );
              }));
        },
      ),
      body: Container(
        child: ListView.builder(
            itemCount: todos == null ? 0 : todos.length,
            itemBuilder: ((context, index) {
              return Dismissible(
                key: Key(todos[index]),
                child: Card(
                  surfaceTintColor: Palette.todoBgColor,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    title: Text(todos[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      color: Palette.todoPointColor,
                      onPressed: () {
                        setState(() {
                          todos.removeAt(index);
                        });
                      },
                    ),
                  ),
                ),
              );
            })),
      ),
    );
  }
}
