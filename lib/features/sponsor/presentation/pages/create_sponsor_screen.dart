import 'package:fiura_ecosystem/features/sponsor/presentation/cubit/sponsor_cubit.dart';
import 'package:fiura_ecosystem/features/sponsor/presentation/cubit/sponsor_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../dependencies.dart';
import '../../../utils/validators.dart';

class CreateSponsorScreen extends StatefulWidget {
  const CreateSponsorScreen({super.key});

  @override
  State<CreateSponsorScreen> createState() => _CreateSponsorScreenState();
}

class _CreateSponsorScreenState extends State<CreateSponsorScreen> {
  // Form key
  final _formKey = GlobalKey<FormState>();
  // TextField controllers
  final controllerSponsorName = TextEditingController();
  final controllerSponsorAbout = TextEditingController();
  final controllerSponsorFacebook = TextEditingController();
  final controllerSponsorTwitter = TextEditingController();
  final controllerSponsorInstagram = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Registro de nuevo Patrocinador'),
        ),
        body: BlocProvider(
          create: (_) => getIt<SponsorCubit>(),
          child: BlocConsumer<SponsorCubit, SponsorState>(
              listener: (context, snapshot) {
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
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Ingresa el nombre del patrocinador',
                            labelText: 'Nombre*',
                          ),
                          controller: controllerSponsorName,
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
                              hintText:
                                  'Ingresa el acerca de, del patrocinador',
                              labelText: 'Acerca de*',
                            ),
                            controller: controllerSponsorAbout,
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
                                'Ingresa la cuenta de Facebook del patrocinador',
                            labelText: 'Facebook',
                          ),
                          controller: controllerSponsorFacebook,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText:
                                'Ingresa la cuenta de Twitter del patrocinador',
                            labelText: 'Twitter',
                          ),
                          controller: controllerSponsorTwitter,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText:
                                'Ingresa la cuenta de Instagram del patrocinador',
                            labelText: 'Instagram',
                          ),
                          controller: controllerSponsorInstagram,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _onPressed(
                                _formKey,
                                context,
                                controllerSponsorName,
                                controllerSponsorAbout,
                                controllerSponsorFacebook,
                                controllerSponsorTwitter,
                                controllerSponsorInstagram,
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
  TextEditingController controllerSponsorName,
  TextEditingController controllerSponsorAbout,
  TextEditingController controllerSponsorFacebook,
  TextEditingController controllerSponsorTwitter,
  TextEditingController controllerSponsorInstagram,
) {
  if (formKey.currentState!.validate()) {
    //Set the value to Sponsor entity

    final String name = controllerSponsorName.text;
    final String about = controllerSponsorAbout.text;
    final String facebook = controllerSponsorFacebook.text;
    final String twitter = controllerSponsorTwitter.text;
    final String instagram = controllerSponsorInstagram.text;
    final List<String> socialNetwork = [facebook, twitter, instagram];

    //Clear the Text fields

    controllerSponsorName.clear();
    controllerSponsorAbout.clear();
    controllerSponsorFacebook.clear();
    controllerSponsorTwitter.clear();
    controllerSponsorInstagram.clear();

    //Use the function to add the Sponsor
    context.read<SponsorCubit>().addSponsor(name, about, socialNetwork);
  }
}
