import 'package:flutter/material.dart';

class ListViewOneScreen extends StatelessWidget {
  const ListViewOneScreen({Key? key}) : super(key: key);

  final options = const ['option 1', 'option 2', 'option 3', 'option 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View onw'),
        ),
        body: ListView(
          children: [
            ...options
                .map((el) => ListTile(
                      title: Text(el),
                      leading: const Icon(Icons.access_time_sharp),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()
          ],
        ));
  }
}
