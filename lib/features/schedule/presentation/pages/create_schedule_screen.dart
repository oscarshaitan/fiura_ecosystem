import 'dart:io';
import 'package:fiura/features/widgets/card_image_selector.dart';
import 'package:fiura/features/widgets/danger_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../dependencies.dart';
import '../cubit/schedule_cubit.dart';
import '../cubit/schedule_state.dart';

class CreateScheduleScreen extends StatefulWidget {
  const CreateScheduleScreen({super.key});

  @override
  State<CreateScheduleScreen> createState() => _CreateScheduleScreenState();
}

class _CreateScheduleScreenState extends State<CreateScheduleScreen> {
  // Image Picker
  final ImagePicker picker = ImagePicker();
  File? image;
  bool showErrorMessage = false;

  // Form key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de nueva noticia'),
      ),
      body: BlocProvider(
        create: (_) => getIt<ScheduleCubit>(),
        child: BlocConsumer<ScheduleCubit, ScheduleState>(listener: (context, snapshot) {
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
                content: Text('Error añadiendo nueva Noticia, intentalo nuevamente'),
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
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
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
                              context.read<ScheduleCubit>().imagePicker();
                            },
                            borderColor: showErrorMessage ? Colors.red : Theme.of(context).inputDecorationTheme.enabledBorder!.borderSide.color,
                          ),
                          if (showErrorMessage) const DangerText(text: "Debes seleccionar una imagen de tu galería"),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {
                            _onPressed(_formKey, context);
                          },
                          child: const Text("Crear horario"))
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

      final File? imageSelected = image;

      setState(() {
        image = null;
      });

      //Use the function to add the Sponsor
      context.read<ScheduleCubit>().addSchedule(imageSelected);
    } else if (image == null) {
      setState(() {
        showErrorMessage = true;
      });
    }
  }
}
