import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ToDoItem extends StatelessWidget {
  final String data;
  const ToDoItem({
    Key? key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      child: ListTile(
        onTap: () {
          print('Clicked on To Do Item.');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        tileColor: Colors.white,
        leading: Icon(
          Icons.check_box,
          color: Colors.blue,
        ),
        title: Text(
          data,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 10,
              icon: Icon(Icons.delete),
              onPressed: () {
                print('Clicked in delete icon');
              },
            )),
      ),
    );
  }
}
