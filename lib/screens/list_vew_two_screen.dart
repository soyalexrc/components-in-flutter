import 'package:flutter/material.dart';

class ListViewTwoScreen extends StatelessWidget {
  const ListViewTwoScreen({Key? key}) : super(key: key);

  final options = const ['option 1', 'option 2', 'option 3', 'option 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View two'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            onTap: () => print('tapped ${options[index]}'),
            title: Text(options[index]),
            leading: const Icon(Icons.access_time_sharp),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          itemCount: options.length,
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
