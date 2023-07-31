import 'package:fiura_ecosystem/features/admins/presentation/cubit/admin_cubit.dart';
import 'package:fiura_ecosystem/features/admins/presentation/cubit/admin_state.dart';
import 'package:fiura_ecosystem/features/admins/presentation/widgets/add_admin_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/empty_list_widget.dart';
import '../../../widgets/tile_image_widget.dart';

class UserSearcherWidget extends StatefulWidget {
  const UserSearcherWidget({super.key});

  @override
  State<UserSearcherWidget> createState() => _UserSearcherWidgetState();
}

class _UserSearcherWidgetState extends State<UserSearcherWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
          child: TextField(
              decoration: const InputDecoration(
                hintText: 'Ingresa el correo aquí',
                labelText: 'Correo a buscar',
              ),
              onChanged: (value) async {
                context.read<AdminCubit>().searchUser(value);
              }),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, top: 40.0, right: 30.0, bottom: 30.0),
          child: Text('Resultados de la búsqueda',
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        BlocBuilder<AdminCubit, AdminState>(
          builder: (context, state) {
            return state.maybeWhen(
              initial: () => const EmptyListWidget(
                  message: "Ingresa un correo para empezar a buscar"),
              orElse: () =>
                  const EmptyListWidget(message: "No se encontraron usuarios"),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error) =>
                  const EmptyListWidget(message: "No se encontraron usuarios"),
              usersFound: (users) => Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return ListTile(
                          leading: TileImageWidget(
                            urlImage: user.photo,
                          ),
                          title: Text(user.name),
                          subtitle: Text(user.email),
                          trailing: IconButton(
                            onPressed: () {
                              viewAddAdminModal(
                                  adminContext: context, user: user);
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ));
                    },
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
