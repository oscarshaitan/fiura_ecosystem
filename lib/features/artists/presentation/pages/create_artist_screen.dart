import 'dart:io';

import 'package:fiura_ecosystem/features/artists/presentation/cubit/artist_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../dependencies.dart';
import '../../../utils/validators.dart';
import '../../../widgets/card_image_selector.dart';
import '../../../widgets/danger_text.dart';
import '../cubit/artist_state.dart';

class CreateArtistScreen extends StatefulWidget {
  const CreateArtistScreen({super.key});

  @override
  State<CreateArtistScreen> createState() => _CreateArtistScreenState();
}

class _CreateArtistScreenState extends State<CreateArtistScreen> {
  // Image Picker
  final ImagePicker picker = ImagePicker();
  File? image;
  bool showErrorMessage = false;
  bool isImageSelected = false;
  // Form key
  final _formKey = GlobalKey<FormState>();
  // TextField controllers
  final controllerArtistName = TextEditingController();
  final controllerArtistAbout = TextEditingController();
  final controllerArtistFacebook = TextEditingController();
  final controllerArtistTwitter = TextEditingController();
  final controllerArtistInstagram = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Registro de nuevo Artista'),
        ),
        body: BlocProvider(
          create: (_) => getIt<ArtistCubit>(),
          child: BlocConsumer<ArtistCubit, ArtistState>(
              listener: (context, snapshot) {
            snapshot.whenOrNull(
              loading: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Añadiendo nuevo Artista...'),
                ),
              ),
              success: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Artista añadido correctamente'),
                ),
              ),
              error: (message) => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                      'Error añadiendo nuevo Artista, intentalo nuevamente'),
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
                            hintText: 'Ingresa el nombre del artista',
                            labelText: 'Nombre*',
                          ),
                          controller: controllerArtistName,
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
                              hintText: 'Ingresa el acerca de, del artista',
                              labelText: 'Acerca de*',
                            ),
                            controller: controllerArtistAbout,
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
                                'Ingresa la cuenta de Facebook del artista',
                            labelText: 'Facebook',
                          ),
                          controller: controllerArtistFacebook,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText:
                                'Ingresa la cuenta de Twitter del artista',
                            labelText: 'Twitter',
                          ),
                          controller: controllerArtistTwitter,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText:
                                'Ingresa la cuenta de Instagram del artista',
                            labelText: 'Instagram',
                          ),
                          controller: controllerArtistInstagram,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _onPressed(_formKey, context);
                            },
                            child: const Text("Crear artista"))
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

  void _onPressed(
    GlobalKey<FormState> formKey,
    BuildContext context,
  ) {
    if (formKey.currentState!.validate() && isImageSelected) {
      //Set the value to Artist entity

      final String name = controllerArtistName.text;
      final String about = controllerArtistAbout.text;
      final String facebook = controllerArtistFacebook.text;
      final String twitter = controllerArtistTwitter.text;
      final String instagram = controllerArtistInstagram.text;
      final List<String> socialNetwork = [facebook, twitter, instagram];
      final File? imageSelected = image;

      //Clear the Text fields

      controllerArtistName.clear();
      controllerArtistAbout.clear();
      controllerArtistFacebook.clear();
      controllerArtistTwitter.clear();
      controllerArtistInstagram.clear();
      setState(() {
        image = null;
      });

      //Use the function to add the Artist
      context
          .read<ArtistCubit>()
          .addArtist(name, about, socialNetwork, imageSelected!);
    } else if (!isImageSelected) {
      setState(() {
        showErrorMessage = true;
      });
    }
  }
}
