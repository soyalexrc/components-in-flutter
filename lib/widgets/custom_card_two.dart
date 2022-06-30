import 'package:flutter/material.dart';
import 'package:flutter_components_app/theme/app_theme.dart';

class CustomCardTwo extends StatelessWidget {
  const CustomCardTwo({
    Key? key,
    required this.imageUrl,
    this.name,
  }) : super(key: key);

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        shadowColor: AppTheme.primary.withOpacity(0.5),
        elevation: 20,
        child: Column(children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(microseconds: 300),
          ),
          if (name != null)
          Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name! ))
        ]));
  }
}
