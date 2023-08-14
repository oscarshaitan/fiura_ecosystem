import 'package:fiura_ecosystem/dependencies.dart';
import 'package:fiura_ecosystem/features/home/widgets/logout_modal.dart';
import 'package:fiura_ecosystem/features/login/presentation/cubit/login_cubit.dart';
import 'package:fiura_ecosystem/features/login/presentation/cubit/login_state.dart';
import 'package:fiura_ecosystem/features/user/profile_item_widget.dart';
import 'package:fiura_ecosystem/features/widgets/on_load_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cuenta"),
      ),
      body: BlocProvider(
        create: (context) => getIt<LoginCubit>()..getCurrentUser(),
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return state.maybeWhen(
                loading: () => const Center(child: OnLoadMessage()),
                error: (message) => Center(
                      child: Text(message),
                    ),
                userFetched: (user) {
                  return Container(
                    padding: const EdgeInsets.all(20.0),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(user.photo),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                user.name,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              const Divider(
                                color: Color(0xff717171),
                                height: 1,
                              ),
                            ]),
                        ProfileItemWidget(
                          itemName: "Tipo de usuario",
                          itemValue: user.admin! ? "Administrador" : "Usuario",
                        ),
                        ProfileItemWidget(
                            itemName: "Correo", itemValue: user.email),
                        const SizedBox(
                          height: 30.0,
                        ),
                        const Expanded(child: SizedBox()),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.delete),
                              SizedBox(
                                width: 15,
                              ),
                              Text("Borrar cuenta"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            logoutModal(context: context);
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.logout),
                              SizedBox(
                                width: 15,
                              ),
                              Text("Cerrar sesión"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                orElse: () => Container());
          },
        ),
      ),
    );
  }
}
