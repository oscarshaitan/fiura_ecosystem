import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/core/entities/artist_entity/artist_entity.dart';
import 'package:fiura_ecosystem/features/artists/presentation/cubit/artist_cubit.dart';
import 'package:fiura_ecosystem/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../dependencies.dart';
import '../../../utils/validators.dart';
import '../../../widgets/card_image_selector.dart';
import '../../../widgets/danger_text.dart';
import '../cubit/artist_state.dart';

class CreateArtistScreen extends StatefulWidget {
  final ArtistEntity? artist;
  const CreateArtistScreen({super.key, this.artist});

  @override
  State<CreateArtistScreen> createState() => _CreateArtistScreenState();
}

class _CreateArtistScreenState extends State<CreateArtistScreen> {
  // Image Picker
  File? image;
  bool showErrorMessage = false;
  // Form key
  final _formKey = GlobalKey<FormState>();
  // TextField controllers
  final controllerArtistName = TextEditingController();
  final controllerArtistAbout = TextEditingController();
  final controllerArtistFacebook = TextEditingController();
  final controllerArtistTwitter = TextEditingController();
  final controllerArtistInstagram = TextEditingController();

  //Other vars
  bool getImage = true;
  String previousPhotoName = "";

  @override
  void initState() {
    super.initState();
    if (widget.artist != null) {
      controllerArtistName.text = widget.artist!.name;
      controllerArtistAbout.text = widget.artist!.about;
      controllerArtistFacebook.text = widget.artist!.socialNetwork[0] ?? "";
      controllerArtistTwitter.text = widget.artist!.socialNetwork[1] ?? "";
      controllerArtistInstagram.text = widget.artist!.socialNetwork[2] ?? "";
    }
  }

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
                SnackBar(
                  content: Text(widget.artist != null
                      ? 'Actualizando datos del artista...'
                      : 'Añadiendo nuevo Artista...'),
                ),
              ),
              success: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(widget.artist != null
                        ? 'Artista actualizado correctamente'
                        : 'Artista añadido correctamente'),
                  ),
                );
                context.router.push(
                    const HomeScreenRoute(children: [ArtistsScreenRoute()]));
              },
              error: (message) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              ),
              pickedImage: (image) => setState(() {
                this.image = image;
                showErrorMessage = false;
              }),
              chargedImage: (image, name) => setState(() {
                this.image = image;
                showErrorMessage = false;
                previousPhotoName = name;
              }),
            );
          }, builder: (context, snapshot) {
            if (widget.artist != null && getImage) {
              context.read<ArtistCubit>().setUrlToFile(widget.artist!.urlPhoto);
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CardImageSelector(
                              existingImage: widget.artist != null,
                              label: "Selecciona una imagen*",
                              imageFile: image,
                              height: 250.0,
                              width: 350.0,
                              onTap: () {
                                context.read<ArtistCubit>().imagePicker();
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
                            child: Text(widget.artist != null
                                ? "Actualizar artista"
                                : "Crear artista"))
                      ],
                    ),
                  )),
            );
          }),
        ));
  }

  void _onPressed(
    GlobalKey<FormState> formKey,
    BuildContext context,
  ) {
    if (formKey.currentState!.validate() && image != null) {
      //Set the value to Artist entity

      final String name = controllerArtistName.text;
      final String about = controllerArtistAbout.text;
      final String facebook = controllerArtistFacebook.text;
      final String twitter = controllerArtistTwitter.text;
      final String instagram = controllerArtistInstagram.text;
      final List<String> socialNetwork = [facebook, twitter, instagram];
      final File? imageSelected = image;
      final String previousName = previousPhotoName;

      //Clear the Text fields

      controllerArtistName.clear();
      controllerArtistAbout.clear();
      controllerArtistFacebook.clear();
      controllerArtistTwitter.clear();
      controllerArtistInstagram.clear();
      setState(() {
        image = null;
        previousPhotoName = "";
      });

      if (widget.artist != null) {
        //If it is a created artist and we are editing it, use the function to update the Artist
        context.read<ArtistCubit>().updateArtist(widget.artist!.id, name, about,
            socialNetwork, imageSelected, previousName);
      } else {
        //If not, use the function to add the Artist
        context
            .read<ArtistCubit>()
            .addArtist(name, about, socialNetwork, imageSelected!);
      }
    } else if (image == null) {
      setState(() {
        showErrorMessage = true;
      });
    }
  }
}
