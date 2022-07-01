import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components_app/widgets/custom_input.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Alex',
      'last_name': 'Rodriguez',
      'email': 'alexcarvajal2404@gmail.com',
      'password': '1234',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(title: const Text('InputScreen')),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: myFormKey,
                  child: Column(children: [
                    const SizedBox(height: 30),
                    CustomInput(
                        labelText: 'Name',
                        hintText: 'Name',
                        formProperty: 'first_name',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    CustomInput(
                        labelText: 'Lastname',
                        hintText: 'Lastname',
                        formProperty: 'last_name',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    CustomInput(
                        labelText: 'Email',
                        hintText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        formProperty: 'email',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    CustomInput(
                        labelText: 'Password',
                        hintText: 'Password',
                        isPassword: true,
                        formProperty: 'password',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(value: 'Admin', child: const Text('Admin')),
                        DropdownMenuItem(value: 'Superuser', child: const Text('Superuser')),
                        DropdownMenuItem(value: 'Developer', child: const Text('Developer')),
                        DropdownMenuItem(value: 'Owner', child: const Text('Owner')),
                      ],
                      onChanged: (value) {
                        print(value);
                        formValues['role'] = value ?? 'Admin';
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          if (!myFormKey.currentState!.validate()) {
                            print('formulario no valido');
                            return;
                          }
                          print(formValues);
                        },
                        child: const SizedBox(
                            width: double.infinity,
                            child: const Center(child: Text('Save'))))
                  ]),
                ))));
  }
}
