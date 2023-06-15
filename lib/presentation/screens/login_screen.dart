import 'package:flutter/material.dart';
import 'package:material3_app/presentation/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text('Login'),
      //   centerTitle: true,
      // ),
      body: _LoginView(),
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

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: colors.primary,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: colors.secondaryContainer,
      child: Form(
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
                  errorMessage: null,
                  prefixIcon: Icons.email,
                  onChanged: (value) {}),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                label: 'Contraseña',
                hint: 'Ingrese Contraseña...',
                errorMessage: null,
                prefixIcon: Icons.password,
                suffixIcon: Icons.remove_red_eye,
                onChanged: (value) {},
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
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
