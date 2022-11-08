import 'package:flutter/material.dart';

class ListTypeGlobalWidgets extends StatelessWidget {
  String? avater;
  String? email;
  Function? onClick;
  Function? onLongClick;

  ListTypeGlobalWidgets({this.avater, this.email,this.onClick,this.onLongClick });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
        elevation: 15,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
          child: ListTile(
            title: Text(this.email.toString()),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(avater.toString()),
            ),
            onTap: (){
              onClick;
            },
            onLongPress: (){
              onLongClick;
            },
          ),
        ),
      ),
    );
  }
}
