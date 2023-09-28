import 'package:auto_route/auto_route.dart';
import 'package:fiura/features/login/presentation/cubit/login_state.dart';
import 'package:fiura/features/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../../../../dependencies.dart';
import '../../../../router/app_router.gr.dart';
import '../cubit/login_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final controllerEmail = TextEditingController();

  final controllerPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginCubit>(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, snapshot) {
          snapshot.maybeMap(
            success: (_) {
              context.router.popAndPush(const HomeScreenRoute());
            },
            error: (state) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
            },
            orElse: () => null,
          );
        },
        builder: (context, snapshot) {
          return LoadingOverlay(
            isLoading: snapshot is Loading,
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 200.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      const Image(image: AssetImage('assets/logo.png'), height: 150.0),
                      Text(
                        'Bienvenido a Fiura',
                        style: Theme.of(context).textTheme.titleSmall,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        'Por favor inicia sesión para poder acceder a toda la información del Fiura',
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 250.0,
                      ),
                      SignInButton(
                        Buttons.google,
                        text: "Acceder con Gmail",
                        onPressed: () {
                          context.read<LoginCubit>().login();
                        },
                      ),
                      SignInButtonBuilder(
                        text: 'Acceder con Email',
                        icon: Icons.email,
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              )),
                              backgroundColor: Theme.of(context).primaryColor,
                              builder: (dialogContext) {
                                return SingleChildScrollView(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context).viewInsets.bottom, left: 16, right: 16, top: 16),
                                    child: Form(
                                      key: _formKey,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Login a Fiura',
                                            style: Theme.of(context).textTheme.headlineLarge,
                                          ),
                                          const SizedBox(height: 32),
                                          TextFormField(
                                            controller: controllerEmail,
                                            autofocus: true,
                                            decoration: const InputDecoration(
                                              labelText: 'Email',
                                            ),
                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                            validator: (value) {
                                              return nullValidator(value, 'Este campo es obligatorio');
                                            },
                                          ),
                                          const SizedBox(height: 32),
                                          TextFormField(
                                            controller: controllerPass,
                                            obscureText: true,
                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                            onFieldSubmitted: (_) {
                                              if (_formKey.currentState?.validate() ?? false) {
                                                context.read<LoginCubit>().emailLogin(controllerEmail.text, controllerPass.text);
                                                if (dialogContext.mounted) {
                                                  Navigator.of(dialogContext).pop();
                                                }
                                              } else {
                                                _formKey.currentState?.validate();
                                              }
                                            },
                                            decoration: const InputDecoration(
                                              labelText: 'Password',
                                            ),
                                            validator: (value) {
                                              return nullValidator(value, 'Este campo es obligatorio');
                                            },
                                          ),
                                          const SizedBox(height: 32),
                                          ElevatedButton(
                                              onPressed: () async {
                                                if (_formKey.currentState?.validate() ?? false) {
                                                  await context
                                                      .read<LoginCubit>()
                                                      .emailLogin(controllerEmail.text, controllerPass.text);
                                                  if (dialogContext.mounted) {
                                                    Navigator.of(dialogContext).pop();
                                                  }
                                                } else {
                                                  _formKey.currentState?.validate();
                                                }
                                              },
                                              child: const Text('Login')),
                                          const SizedBox(height: 32),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                        },
                        backgroundColor: Colors.blueGrey.shade700,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
