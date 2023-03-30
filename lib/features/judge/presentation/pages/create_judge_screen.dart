import 'package:flutter/material.dart';

import '../../../utils/validators.dart';

class CreateJudgeScreen extends StatefulWidget {
  const CreateJudgeScreen({super.key});

  @override
  State<CreateJudgeScreen> createState() => _CreateJudgeScreenState();
}

class _CreateJudgeScreenState extends State<CreateJudgeScreen> {
  // Form key
  final _formKey = GlobalKey<FormState>();
  // TextField controllers
  final controllerJudgeName = TextEditingController();
  final controllerJudgeAbout = TextEditingController();
  final controllerJudgeFacebook = TextEditingController();
  final controllerJudgeTwitter = TextEditingController();
  final controllerJudgeInstagram = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('New Judge Register'),
        ),
        body: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter the Judge name',
                        labelText: 'Name*',
                      ),
                      validator: (value) {
                        return nullValidator(value, 'Please enter a name');
                      },
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                        maxLines: 3,
                        decoration: const InputDecoration(
                          hintText: 'Enter the about',
                          labelText: 'About*',
                        ),
                        validator: (value) {
                          return nullValidator(
                              value, 'Please enter an about description');
                        }),
                    const SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter Facebook account',
                        labelText: 'Facebook',
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter Twitter account',
                        labelText: 'Twitter',
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter Instagram account',
                        labelText: 'Instagram',
                      ),
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
              )),
        ));
  }
}

void onPressed(GlobalKey<FormState> formKey, BuildContext context) {
  if (formKey.currentState!.validate()) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Processing Data')),
    );
  }
}
