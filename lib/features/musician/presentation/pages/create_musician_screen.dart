import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:fiura/core/entities/musician_entity/musician_entity.dart';
import 'package:fiura/features/musician/presentation/cubit/musician_cubit.dart';
import 'package:fiura/features/musician/presentation/cubit/musician_state.dart';
import 'package:fiura/features/widgets/alert_dialogs.dart';
import 'package:fiura/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../dependencies.dart';
import '../../../utils/validators.dart';
import '../../../widgets/card_image_selector.dart';
import '../../../widgets/danger_text.dart';

class CreateMusicianScreen extends StatefulWidget {
  final MusicianEntity2? musician;
  final MusicianType musicianType;
  const CreateMusicianScreen(
      {super.key, this.musician, required this.musicianType});

  @override
  State<CreateMusicianScreen> createState() => _CreateArtistScreenState();
}

class _CreateArtistScreenState extends State<CreateMusicianScreen> {
  // Image Picker
  File? image;
  bool showErrorMessage = false;
  // Form key
  final _formKey = GlobalKey<FormState>();
  // TextField controllers
  final controllerMusicianName = TextEditingController();
  final controllerMusicianAbout = TextEditingController();
  final controllerMusicianFacebook = TextEditingController();
  final controllerMusicianTwitter = TextEditingController();
  final controllerMusicianInstagram = TextEditingController();

  //Other vars
  bool getImage = true;
  String previousPhotoName = "";
  String type = "";

  @override
  void initState() {
    super.initState();

    if (widget.musicianType == MusicianType.artist) {
      type = "artista";
    } else {
      type = "jurado";
    }

    if (widget.musician != null) {
      controllerMusicianName.text = widget.musician!.name;
      controllerMusicianAbout.text = widget.musician!.about;
      controllerMusicianFacebook.text = widget.musician!.socialNetwork[0] ?? "";
      controllerMusicianTwitter.text = widget.musician!.socialNetwork[1] ?? "";
      controllerMusicianInstagram.text =
          widget.musician!.socialNetwork[2] ?? "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Registro de nuevo $type'),
        ),
        body: BlocProvider(
          create: (_) => getIt<MusicianCubit>(),
          child: BlocConsumer<MusicianCubit, MusicianState>(
              listener: (context, snapshot) {
            snapshot.whenOrNull(
              loading: () => showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: ((context) {
                    return getLoadingAlertDialog(
                        contentText: widget.musician != null
                            ? 'Actualizando datos del $type...'
                            : 'Añadiendo nuevo $type...');
                  })),
              success: () {
                Navigator.of(context).pop();
                showDialog(
                    context: context,
                    builder: ((context) {
                      return getSuccessAlertDialog(
                          contentText: widget.musician != null
                              ? '${type[0].toUpperCase() + type.substring(1)} actualizado correctamente'
                              : '${type[0].toUpperCase() + type.substring(1)} añadido correctamente',
                          continueFunction: () => context.router.push(
                                  HomeScreenRoute(children: [
                                ViewMusicianScreenRoute(
                                    musicianType: widget.musicianType)
                              ])),
                          buttonTextStyle:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.red,
                                  ));
                    }));
              },
              error: (message) {
                Navigator.of(context).pop();
                context.router.pop();
                showDialog(
                    context: context,
                    builder: ((context) {
                      return getErrorAlertDialog(
                          contentText: message,
                          continueFunction: () => context.router.pop());
                    }));
              },
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
            if (widget.musician != null && getImage) {
              context
                  .read<MusicianCubit>()
                  .setUrlToFile(widget.musician!.urlPhoto, widget.musicianType);
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
                              existingImage: widget.musician != null,
                              label: "Selecciona una imagen*",
                              imageFile: image,
                              height: 250.0,
                              width: 350.0,
                              onTap: () {
                                context.read<MusicianCubit>().imagePicker();
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
                          decoration: InputDecoration(
                            hintText: 'Ingresa el nombre del $type',
                            labelText: 'Nombre*',
                          ),
                          controller: controllerMusicianName,
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
                            decoration: InputDecoration(
                              hintText: 'Ingresa el acerca de, del $type',
                              labelText: 'Acerca de*',
                            ),
                            controller: controllerMusicianAbout,
                            validator: (value) {
                              return nullValidator(
                                  value, 'Este campo es obligatorio');
                            }),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Ingresa la cuenta de Facebook del $type',
                            labelText: 'Facebook',
                          ),
                          controller: controllerMusicianFacebook,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Ingresa la cuenta de Twitter del $type',
                            labelText: 'Twitter',
                          ),
                          controller: controllerMusicianTwitter,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText:
                                'Ingresa la cuenta de Instagram del $type',
                            labelText: 'Instagram',
                          ),
                          controller: controllerMusicianInstagram,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _onPressed(_formKey, context);
                            },
                            child: Text(widget.musician != null
                                ? "Actualizar $type"
                                : "Crear $type"))
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

      final String name = controllerMusicianName.text;
      final String about = controllerMusicianAbout.text;
      final String facebook = controllerMusicianFacebook.text;
      final String twitter = controllerMusicianTwitter.text;
      final String instagram = controllerMusicianInstagram.text;
      final List<String> socialNetwork = [facebook, twitter, instagram];
      final File? imageSelected = image;
      final String previousName = previousPhotoName;

      if (widget.musician != null) {
        //If it is a created musician and we are editing it, use the function to update the musician
        context.read<MusicianCubit>().updateMusician(
            widget.musician!.id,
            name,
            about,
            socialNetwork,
            imageSelected,
            previousName,
            widget.musicianType);
      } else {
        //If not, use the function to add the musician

        context.read<MusicianCubit>().addMusician(
            name, about, socialNetwork, imageSelected, widget.musicianType);
      }
    } else if (image == null) {
      setState(() {
        showErrorMessage = true;
      });
    }
  }
}
