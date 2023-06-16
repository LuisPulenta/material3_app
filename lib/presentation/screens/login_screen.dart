import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material3_app/presentation/blocs/login/login_cubit.dart';
import 'package:material3_app/presentation/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Login'),
      //   centerTitle: true,
      // ),
      body: BlocProvider(
          create: (context) => LoginCubit(), child: const _LoginView()),
    );
  }
}

//---------------------------------------------------------------
//------------------------ _LoginView ---------------------------
//---------------------------------------------------------------
class _LoginView extends StatelessWidget {
  const _LoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Image(
                image: AssetImage('assets/logo.png'),
                width: 400,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _LoginForm(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

//---------------------------------------------------------
//----------------------- _LoginForm ----------------------
//---------------------------------------------------------

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final loginCubit = context.watch<LoginCubit>();

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: colors.primary.withOpacity(.5),
            blurRadius: 20.0,
            spreadRadius: 0.0,
            offset: const Offset(
              10.0,
              10.0,
            ),
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: colors.primary,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 30,
        color: colors.secondaryContainer,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  label: 'Correo electrónico',
                  hint: 'Ingrese Correo electrónico...',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo requerido';
                    }
                    if (value.trim().isEmpty) return 'Campo requerido';
                    final emailRegExp = RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    );
                    if (!emailRegExp.hasMatch(value)) {
                      return 'No tiene formato de correo';
                    }
                    return null;
                  },
                  errorMessage: null,
                  prefixIcon: Icons.email,
                  onChanged: (value) {
                    loginCubit.emailChanged(value);
                    _formKey.currentState!.validate();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  label: 'Contraseña',
                  hint: 'Ingrese Contraseña...',
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Campo requerido';
                    if (value.trim().isEmpty) return 'Campo requerido';
                    if (value.trim().length < 6) return 'Más de 6 letras';
                    return null;
                  },
                  errorMessage: null,
                  prefixIcon: Icons.password,
                  suffixIcon: Icons.remove_red_eye,
                  onChanged: (value) {
                    loginCubit.passwordChanged(value);
                    _formKey.currentState!.validate();
                  },
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  color: colors.inversePrimary,
                  text: 'Ingresar',
                  icon: Icons.login,
                  width: double.infinity,
                  height: 54,
                  onPressed: () {
                    bool isvalid = _formKey.currentState!.validate();
                    if (!isvalid) return;
                    loginCubit.onSubmit();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
