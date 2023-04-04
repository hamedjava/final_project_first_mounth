import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomListItem extends StatelessWidget {
  CustomListItem(this.item);
  String item;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.redAccent,
        width: 250,
        height: 32,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                this.item,
                style: TextStyle(color: Colors.grey[850]),
              ),
            ),
          ],
        ));
  }
}
