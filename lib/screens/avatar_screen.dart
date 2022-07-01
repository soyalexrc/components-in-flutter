import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Avatar'),
          actions: [
            Container(
                margin: const EdgeInsets.only(right: 10),
                child: const CircleAvatar(child: Text('AR')))
          ],
        ),
        body: const Center(
          child: CircleAvatar(
            maxRadius: 110,
            backgroundImage: NetworkImage(
                'https://media.revistagq.com/photos/5ca5f0f8f552a13d4032e13c/3:4/w_675,h_900,c_limit/stan_lee_9628.jpg'),
          ),
        ));
  }
}
