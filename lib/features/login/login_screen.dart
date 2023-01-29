import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 200.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Image(image: AssetImage('assets/logo.png'), height: 150.0),
              Text(
                'Lorem ipsum dolor sit amet',
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra dapibus sem.',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 250.0,
              ),
              ElevatedButton(
                onPressed: () {
                  print("Inicio con Google");
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 15.0)),
                child: Text(
                  'LOGIN',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
