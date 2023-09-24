import 'package:fiura/dependencies.dart';
import 'package:fiura/features/admins/presentation/cubit/admin_cubit.dart';
import 'package:fiura/features/admins/presentation/widgets/user_searcher_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAdminScreen extends StatelessWidget {
  const CreateAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Agregar administrador'),
        ),
        body: BlocProvider(
          create: (_) => getIt<AdminCubit>(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 30.0),
                  child: const Text(
                      "Escribe un correo electrónico para buscar al usuario que deseas hacer administrador"),
                ),
                const UserSearcherWidget(),
              ],
            ),
          ),
        ));
  }
}
