import 'package:flutter/material.dart';

class CreateJudgeScreen extends StatefulWidget {
  const CreateJudgeScreen({super.key});

  @override
  State<CreateJudgeScreen> createState() => _CreateJudgeScreenState();
}

class _CreateJudgeScreenState extends State<CreateJudgeScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('New Judge Register'),
        ),
        body: Form(
            key: _formKey,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter the Judge name',
                      labelText: 'name',
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a name';
                      }
                      return null;
                    }),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter the about',
                      labelText: 'About',
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an about description';
                      }
                      return null;
                    }),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        onPressed(_formKey, context);
                      },
                      child: const Text("Submit"))
                ],
              ),
            )));
  }
}

void onPressed(GlobalKey<FormState> formKey, BuildContext context) {
  if (formKey.currentState!.validate()) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Processing Data')),
    );
  }
}
