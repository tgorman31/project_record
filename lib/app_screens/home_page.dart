import 'package:flutter/material.dart';
import 'package:project_record/util/my_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                MyContainer(
                  boxColor: (Colors.amber[500])!,
                  boxText: 'home1',
                ),
                MyContainer(
                  boxColor: (Colors.yellow[500])!,
                  boxText: 'home2',
                ),
                MyContainer(
                  boxColor: (Colors.orange[500])!,
                  boxText: 'home3',
                ),
                MyContainer(
                  boxColor: (Colors.amber[100])!,
                  boxText: 'home4',
                ),
                MyContainer(
                  boxColor: (Colors.yellow[100])!,
                  boxText: 'home5',
                ),
                MyContainer(
                  boxColor: (Colors.orange[100])!,
                  boxText: 'home6',
                ),
                MyContainer(
                  boxColor: (Colors.amber[900])!,
                  boxText: 'home7',
                ),
                MyContainer(
                  boxColor: (Colors.yellow[900])!,
                  boxText: 'home8',
                ),
                MyContainer(
                  boxColor: (Colors.orange[900])!,
                  boxText: 'home9',
                ),
                MyContainer(
                  boxColor: (Colors.amber[300])!,
                  boxText: 'home10',
                ),
                MyContainer(
                  boxColor: (Colors.yellow[300])!,
                  boxText: 'home11',
                ),
                MyContainer(
                  boxColor: (Colors.orange[300])!,
                  boxText: 'home12',
                ),
              ],
            ),
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: (Container(
            color: Colors.blue[500],
            alignment: Alignment.center,
            child: const Text(
              'Sidebar',
              style: TextStyle(fontSize: 40),
            ),
          )),
        )
      ],
    );
  }
}
