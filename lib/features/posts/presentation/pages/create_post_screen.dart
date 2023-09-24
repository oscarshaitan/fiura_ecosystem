import 'dart:io';
import 'package:fiura/features/widgets/card_image_selector.dart';
import 'package:fiura/features/widgets/danger_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../dependencies.dart';
import '../../../utils/validators.dart';
import '../cubit/post_cubit.dart';
import '../cubit/post_state.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  // Image Picker
  final ImagePicker picker = ImagePicker();
  File? image;
  bool showErrorMessage = false;
  // Form key
  final _formKey = GlobalKey<FormState>();
  // TextField controllers
  final controllerPostRedirectionUrl = TextEditingController();
  final controllerPostDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de nueva noticia'),
      ),
      body: BlocProvider(
        create: (_) => getIt<PostCubit>(),
        child:
            BlocConsumer<PostCubit, PostState>(listener: (context, snapshot) {
          snapshot.whenOrNull(
            loading: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Añadiendo nueva Noticia...'),
              ),
            ),
            success: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Noticia añadida correctamente'),
              ),
            ),
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content:
                    Text('Error añadiendo nueva Noticia, intentalo nuevamente'),
              ),
            ),
            pickedImage: (image) => setState(() {
              this.image = image;
              showErrorMessage = false;
            }),
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
                            existingImage: false,
                            label: "Selecciona una imagen*",
                            imageFile: image,
                            height: 250.0,
                            width: 350.0,
                            onTap: () {
                              context.read<PostCubit>().imagePicker();
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
                          hintText: 'Ingresa el url de redirección',
                          labelText: 'Ingrese una url',
                        ),
                        controller: controllerPostRedirectionUrl,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      TextFormField(
                          maxLines: 3,
                          decoration: const InputDecoration(
                            hintText: 'Ingrese la descripción de la noticia',
                            labelText: 'Descripción*',
                          ),
                          controller: controllerPostDescription,
                          validator: (value) {
                            return nullValidator(
                                value, 'Este campo es obligatorio');
                          }),
                      const SizedBox(
                        height: 30.0,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            _onPressed(_formKey, context);
                          },
                          child: const Text("Crear post"))
                    ],
                  ),
                )),
          );
        }),
      ),
    );
  }

  void _onPressed(GlobalKey<FormState> formKey, BuildContext context) {
    if (formKey.currentState!.validate() && image != null) {
      showErrorMessage = false;

      //Set the value to Sponsor entity

      final String redirectionUrl = controllerPostRedirectionUrl.text;
      final String description = controllerPostDescription.text;
      final File? imageSelected = image;

      //Clear the Text fields

      controllerPostRedirectionUrl.clear();
      controllerPostDescription.clear();

      setState(() {
        image = null;
      });

      //Use the function to add the Sponsor
      context
          .read<PostCubit>()
          .addPost(redirectionUrl, description, imageSelected);
    } else if (image == null) {
      setState(() {
        showErrorMessage = true;
      });
    }
  }
}
