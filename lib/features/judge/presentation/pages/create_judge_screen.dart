import 'dart:io';
import 'package:fiura/core/entities/judge_entity/judge_entity.dart';
import 'package:fiura/features/judge/presentation/cubit/judge_state.dart';
import 'package:fiura/features/widgets/danger_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../dependencies.dart';
import '../../../utils/validators.dart';
import '../../../widgets/card_image_selector.dart';
import '../cubit/judge_cubit.dart';

class CreateJudgeScreen extends StatefulWidget {
  final JudgeEntity? judge;

  const CreateJudgeScreen({super.key, this.judge});

  @override
  State<CreateJudgeScreen> createState() => _CreateJudgeScreenState();
}

class _CreateJudgeScreenState extends State<CreateJudgeScreen> {
  File? image;
  bool showErrorMessage = false;

  // Form key
  final _formKey = GlobalKey<FormState>();

  // TextField controllers
  final controllerJudgeName = TextEditingController();
  final controllerJudgeAbout = TextEditingController();
  final controllerJudgeFacebook = TextEditingController();
  final controllerJudgeTwitter = TextEditingController();
  final controllerJudgeInstagram = TextEditingController();

  //Other vars
  bool getImage = true;
  String previousPhotoName = "";

  @override
  void initState() {
    super.initState();
    if (widget.judge != null) {
      controllerJudgeName.text = widget.judge!.name;
      controllerJudgeAbout.text = widget.judge!.about;
      controllerJudgeFacebook.text = widget.judge!.socialNetwork[0] ?? "";
      controllerJudgeTwitter.text = widget.judge!.socialNetwork[1] ?? "";
      controllerJudgeInstagram.text = widget.judge!.socialNetwork[2] ?? "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Registro de nuevo jurado'),
        ),
        body: BlocProvider(
          create: (_) => getIt<JudgeCubit>(),
          child: BlocConsumer<JudgeCubit, JudgeState>(
              listener: (context, snapshot) {
            snapshot.whenOrNull(
              loading: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Añadiendo nuevo jurado...'),
                ),
              ),
              success: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('jurado añadido correctamente'),
                ),
              ),
              error: (message) => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                      'Error añadiendo nuevo jurado, intentalo nuevamente'),
                ),
              ),
              pickedImage: (image) => setState(() {
                this.image = image;
                showErrorMessage = false;
              }),
            );
          }, builder: (context, snapshot) {
            if (widget.judge != null && getImage) {
              context.read<JudgeCubit>().setUrlToFile(widget.judge!.urlPhoto);
              getImage = false;
            }

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
                              existingImage: false,
                              label: "Selecciona una imagen*",
                              imageFile: image,
                              height: 250.0,
                              width: 350.0,
                              onTap: () {
                                context.read<JudgeCubit>().imagePicker();
                              },
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
                            hintText: 'Ingresa el nombre completo del jurado',
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
                              hintText: 'Ingresa el acerca de, del jurado',
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
                            hintText:
                                'Ingresa la cuenta de Facebook del jurado',
                            labelText: 'Facebook',
                          ),
                          controller: controllerJudgeFacebook,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Ingresa la cuenta de Twitter del jurado',
                            labelText: 'Twitter',
                          ),
                          controller: controllerJudgeTwitter,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText:
                                'Ingresa la cuenta de Instagram del jurado',
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

  void _onPressed(GlobalKey<FormState> formKey, BuildContext context) {
    if (formKey.currentState!.validate() && image != null) {
      //Set the value to Judge entity

      final String name = controllerJudgeName.text;
      final String about = controllerJudgeAbout.text;
      final String facebook = controllerJudgeFacebook.text;
      final String twitter = controllerJudgeTwitter.text;
      final String instagram = controllerJudgeInstagram.text;
      final List<String> socialNetwork = [facebook, twitter, instagram];
      final File? imageSelected = image;
      final String previousName = previousPhotoName;

      //Clear the Text fields

      controllerJudgeName.clear();
      controllerJudgeAbout.clear();
      controllerJudgeFacebook.clear();
      controllerJudgeTwitter.clear();
      controllerJudgeInstagram.clear();

      setState(() {
        image = null;
        previousPhotoName = "";
      });
      if (widget.judge != null) {
        //If it is a created artist and we are editing it, use the function to update the Artist
        context.read<JudgeCubit>().updateJudge(widget.judge!.id, name, about,
            socialNetwork, imageSelected, previousName);
      } else {
        //Use the function to add the judge
        context
            .read<JudgeCubit>()
            .addJudge(name, about, socialNetwork, imageSelected);
      }
    } else if (image == null) {
      setState(() {
        showErrorMessage = true;
      });
    }
  }
}
