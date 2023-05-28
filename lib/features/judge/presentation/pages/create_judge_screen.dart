import 'dart:io';

import 'package:fiura_ecosystem/features/judge/presentation/cubit/judge_state.dart';
import 'package:fiura_ecosystem/features/widgets/danger_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../dependencies.dart';
import '../../../utils/validators.dart';
import '../../../widgets/card_image_selector.dart';
import '../cubit/judge_cubit.dart';

class CreateJudgeScreen extends StatefulWidget {
  const CreateJudgeScreen({super.key});

  @override
  State<CreateJudgeScreen> createState() => _CreateJudgeScreenState();
}

class _CreateJudgeScreenState extends State<CreateJudgeScreen> {
  // Image Picker
  final ImagePicker picker = ImagePicker();
  File? image;
  bool showErrorMessage = false;
  bool isImageSelected = false;
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
          title: const Text('Registro de nuevo Juez'),
        ),
        body: BlocProvider(
          create: (_) => getIt<JudgeCubit>(),
          child: BlocConsumer<JudgeCubit, JudgeState>(
              listener: (context, snapshot) {
            snapshot.whenOrNull(
              loading: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Añadiendo nuevo Juez...'),
                ),
              ),
              success: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Juez añadido correctamente'),
                ),
              ),
              error: (message) => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content:
                      Text('Error añadiendo nuevo Juez, intentalo nuevamente'),
                ),
              ),
            );
          }, builder: (context, snapshot) {
            return SingleChildScrollView(
              child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CardImageSelector(
                              label: "Selecciona una imagen*",
                              imageFile: image,
                              height: 250.0,
                              width: 350.0,
                              onTap: imagePicker,
                              borderColor: showErrorMessage
                                  ? Colors.red
                                  : Theme.of(context)
                                      .inputDecorationTheme
                                      .enabledBorder!
                                      .borderSide
                                      .color,
                            ),
                            if (showErrorMessage)
                              const DangerText(
                                  text:
                                      "Debes seleccionar una imagen de tu galería"),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Ingresa el nombre completo del Juez',
                            labelText: 'Nombre*',
                          ),
                          controller: controllerJudgeName,
                          validator: (value) {
                            return nullValidator(
                                value, 'Este campo es obligatorio');
                          },
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                            maxLines: 3,
                            decoration: const InputDecoration(
                              hintText: 'Ingresa el acerca de, del juez',
                              labelText: 'Acerca de*',
                            ),
                            controller: controllerJudgeAbout,
                            validator: (value) {
                              return nullValidator(
                                  value, 'Este campo es obligatorio');
                            }),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Ingresa la cuenta de Facebook del juez',
                            labelText: 'Facebook',
                          ),
                          controller: controllerJudgeFacebook,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Ingresa la cuenta de Twitter del juez',
                            labelText: 'Twitter',
                          ),
                          controller: controllerJudgeTwitter,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Ingresa la cuenta de Instagram del juez',
                            labelText: 'Instagram',
                          ),
                          controller: controllerJudgeInstagram,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _onPressed(_formKey, context);
                            },
                            child: const Text("Submit"))
                      ],
                    ),
                  )),
            );
          }),
        ));
  }

  void imagePicker() {
    picker.pickImage(source: ImageSource.gallery).then((pickedImage) {
      setState(() {
        image = File(pickedImage!.path);
        isImageSelected = true;
        showErrorMessage = false;
      });
    });
  }

  void _onPressed(GlobalKey<FormState> formKey, BuildContext context) {
    if (formKey.currentState!.validate()) {
      //Set the value to Judge entity

      final String name = controllerJudgeName.text;
      final String about = controllerJudgeAbout.text;
      final String facebook = controllerJudgeFacebook.text;
      final String twitter = controllerJudgeTwitter.text;
      final String instagram = controllerJudgeInstagram.text;
      final List<String> socialNetwork = [facebook, twitter, instagram];
      final File? imageSelected = image;

      //Clear the Text fields

      controllerJudgeName.clear();
      controllerJudgeAbout.clear();
      controllerJudgeFacebook.clear();
      controllerJudgeTwitter.clear();
      controllerJudgeInstagram.clear();

      //Use the function to add the judge
      context
          .read<JudgeCubit>()
          .addJudge(name, about, socialNetwork, imageSelected);
    }
  }
}
