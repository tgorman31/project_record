import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[500],
      alignment: Alignment.center,
      child: const Text(
        'List',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
