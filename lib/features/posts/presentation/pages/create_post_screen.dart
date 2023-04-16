import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  // Form key
  final _formKey = GlobalKey<FormState>();
  // TextField controllers
  final controllerPostRedirectionUrl = TextEditingController();
  final controllerPostUrlPhoto = TextEditingController();
  final controllerPostDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Registro de nuevo Patrocinador'),
        ),
        body: BlocProvider(
          create: (_) => getIt<PostCubit>(),
          child:
              BlocConsumer<PostCubit, PostState>(listener: (context, snapshot) {
            snapshot.whenOrNull(
              loading: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Añadiendo nuevo Patrocinador...'),
                ),
              ),
              success: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Patrocinador añadido correctamente'),
                ),
              ),
              error: (message) => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                      'Error añadiendo nuevo Patrocinador, intentalo nuevamente'),
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
                        TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Ingresa la url de la foto',
                              labelText: 'Ingrese una url*',
                            ),
                            controller: controllerPostUrlPhoto,
                            validator: (value) {
                              return nullValidator(
                                  value, 'Este campo es obligatorio');
                            }),
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
                              _onPressed(
                                _formKey,
                                context,
                                controllerPostRedirectionUrl,
                                controllerPostUrlPhoto,
                                controllerPostDescription,
                              );
                            },
                            child: const Text("Crear patrocinador"))
                      ],
                    ),
                  )),
            );
          }),
        ));
  }
}

void _onPressed(
  GlobalKey<FormState> formKey,
  BuildContext context,
  TextEditingController controllerSponsorRedirectionUrl,
  TextEditingController controllerSponsorUrlPhoto,
  TextEditingController controllerSponsorDescription,
) {
  if (formKey.currentState!.validate()) {
    //Set the value to Sponsor entity

    final String redirectionUrl = controllerSponsorRedirectionUrl.text;
    final String urlPhoto = controllerSponsorUrlPhoto.text;
    final String description = controllerSponsorDescription.text;

    //Clear the Text fields

    controllerSponsorRedirectionUrl.clear();
    controllerSponsorUrlPhoto.clear();
    controllerSponsorDescription.clear();

    //Use the function to add the Sponsor
    context.read<PostCubit>().addPost(redirectionUrl, urlPhoto, description);
  }
}
