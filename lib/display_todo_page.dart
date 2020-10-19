import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'add_task_screen.dart';
import 'task_list.dart';

class DisplayTodoPage extends StatefulWidget {
  @override
  _DisplayTodoPageState createState() => _DisplayTodoPageState();
}

class _DisplayTodoPageState extends State<DisplayTodoPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'TO DO LIST',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              TasksList(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Color(0xffC400C6),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
