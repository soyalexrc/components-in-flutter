import 'package:flutter/material.dart';
import 'package:flutter_components_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Widget')),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          CustomCard(),
          SizedBox(height: 10),
          CustomCardTwo(
            imageUrl:
                'https://cl.buscafs.com/www.levelup.com/public/uploads/images/709801/709801.jpg',
            name: 'paisaje 1',
          ),
          SizedBox(height: 10),
          CustomCardTwo(
              imageUrl:
                  'https://www.creativefabrica.com/wp-content/uploads/2021/06/12/mountain-landscape-illustration-design-b-Graphics-13326021-1.jpg'),
          SizedBox(height: 10),
          CustomCardTwo(
              imageUrl:
                  'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg'),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
