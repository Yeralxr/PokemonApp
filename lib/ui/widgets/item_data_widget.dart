import 'package:flutter/material.dart';

class ItemDataWidget extends StatelessWidget {
  const ItemDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Text(
            "height: ",
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
          Text(
            "0.71 m",
          ),
        ],
      ),
    );
  }
}
