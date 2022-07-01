import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components_app/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SliderScreen')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider(
              value: _sliderValue,
              activeColor: AppTheme.primary,
              min: 50,
              divisions: 10,
              max: 400,
              onChanged: (value) {
                setState(
                      () {
                    _sliderValue = value;
                  },
                );
              },
            ),
            Slider.adaptive(
              value: _sliderValue,
              activeColor: AppTheme.primary,
              min: 50,
              max: 400,
              onChanged: _sliderEnabled
                  ? (value) {
                setState(
                      () {
                    _sliderValue = value;
                  },
                );
              }
                  : null,
            ),
            Checkbox(
                value: _sliderEnabled,
                onChanged: (value) {
                  setState(() => _sliderEnabled = value ?? true);
                }),
            CheckboxListTile(
                title: const Text('Habilitar slider'),
                activeColor: AppTheme.primary,
                value: _sliderEnabled,
                onChanged: (value) {
                  setState(() => _sliderEnabled = value ?? true);
                }),
            Switch(
                activeColor: AppTheme.primary,
                value: _sliderEnabled,
                onChanged: (value) {
                  setState(() => _sliderEnabled = value);
                }),
            SwitchListTile.adaptive(
                title: const Text('Habilitar slider'),
                activeColor: AppTheme.primary,
                value: _sliderEnabled,
                onChanged: (value) {
                  setState(() => _sliderEnabled = value);
                }),
            const AboutListTile(),
            Image(
              fit: BoxFit.contain,
              width: _sliderValue,
              image: const NetworkImage(
                  'https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_960_720.png'),
            ),
            const SizedBox(height: 100),
          ],
        ),
      )
    );
  }
}
