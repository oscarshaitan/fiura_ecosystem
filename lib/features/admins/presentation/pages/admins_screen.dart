import 'package:fiura_ecosystem/core/entities/user/user_entity.dart';
import 'package:fiura_ecosystem/dependencies.dart';
import 'package:fiura_ecosystem/features/admins/presentation/cubit/admin_cubit.dart';
import 'package:fiura_ecosystem/features/admins/presentation/cubit/admin_state.dart';
import 'package:fiura_ecosystem/features/widgets/on_load_message.dart';
import 'package:fiura_ecosystem/features/widgets/remove_admin_modal.dart';
import 'package:fiura_ecosystem/features/widgets/tile_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AdminCubit>()..getAdmins(),
      child: BlocConsumer<AdminCubit, AdminState>(
        listener: (context, state) {
          state.whenOrNull();
        },
        builder: (context, state) {
          void removeAdmin(UserEntity admin) {
            viewRemoveModal(
                context: context,
                message:
                    "Seguro que quieres revocar los permisos de administrador a ${admin.name}",
                acceptMethod: () {
                  context.read<AdminCubit>().deleteAdmin(admin.uid);
                  Navigator.pop(context);
                },
                acceptText: "Continuar",
                cancelText: "Cancelar",
                title: "¿Revocar permisos?",
                titleColor: Colors.red);
          }

          return state.maybeWhen(
            loading: () => const Center(child: OnLoadMessage()),
            error: (error) => Center(
              child: Center(child: Text(error)),
            ),
            loadData: (adminList) => FutureBuilder<void>(
                future: Future.wait(
                  adminList.map(
                    (admin) =>
                        precacheImage(NetworkImage(admin.photo), context),
                  ),
                ),
                builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                            "Ups! Ocurrió un error mientras cargabamos los administradores: ${snapshot.error}"),
                      );
                    } else {
                      return Scaffold(
                        body: Container(
                          margin: const EdgeInsets.only(top: 20.0),
                          child: ListView.builder(
                            itemCount: adminList.length,
                            itemBuilder: (context, index) {
                              final admin = adminList[index];
                              return ListTile(
                                leading: TileImageWidget(urlImage: admin.photo),
                                title: Text(admin.name),
                                subtitle: Text(
                                  admin.email,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: const Color(0xff717171)),
                                ),
                                trailing: IconButton(
                                  onPressed: () => removeAdmin(admin),
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Color(0xff717171),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    }
                  } else {
                    return const Center(child: OnLoadMessage());
                  }
                }),
            orElse: () => const Center(
              child: Text(
                  "Ups! Ocurrió un error inesperado mientras cargabamos los administradores"),
            ),
          );
        },
      ),
    );
  }
}
