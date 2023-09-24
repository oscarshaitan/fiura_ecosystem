import 'package:auto_route/auto_route.dart';
import 'package:fiura/dependencies.dart';
import 'package:fiura/features/admins/presentation/cubit/admin_cubit.dart';
import 'package:fiura/features/admins/presentation/cubit/admin_state.dart';
import 'package:fiura/features/widgets/empty_list_widget.dart';
import 'package:fiura/features/widgets/on_load_message.dart';
import 'package:fiura/features/admins/presentation/widgets/remove_admin_modal.dart';
import 'package:fiura/features/widgets/tile_image_widget.dart';
import 'package:fiura/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AdminCubit>()..getAdmins(),
      child: BlocBuilder<AdminCubit, AdminState>(
        builder: (context, state) {
          return state.maybeWhen(
              loading: () => const Center(child: OnLoadMessage()),
              error: (error) => Center(
                    child: Center(child: Text(error)),
                  ),
              loadData: (adminList) => Scaffold(
                    floatingActionButton: FloatingActionButton(
                      child: const Icon(Icons.add),
                      onPressed: () {
                        context.router.push(const CreateAdminScreenRoute());
                      },
                    ),
                    body: adminList.isNotEmpty
                        ? Container(
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
                                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: const Color(0xff717171)),
                                  ),
                                  trailing: IconButton(
                                    onPressed: () {
                                      viewRemoveModal(
                                        adminContext: context,
                                        admin: admin,
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Color(0xff717171),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        : const EmptyListWidget(
                            message: 'No hay administradores registrados',
                          ),
                  ),
              orElse: () => const EmptyListWidget(
                    message: 'Ups! Ocurrion un error al cargar los administradores',
                  ));
        },
      ),
    );
  }
}
