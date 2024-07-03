import 'package:flutter/material.dart';
import 'package:productos/ui/input_decorations.dart';
import 'package:productos/widgets/widgets.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox( height: 250 ),

              CardContainer(
                child: Column(
                  children: [

                    const SizedBox( height: 10 ),
                    Text(
                      'Login', 
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),

                    const SizedBox( height: 30 ),

                    _LoginForm()



                  ],
                )
              ),

              const SizedBox( height: 50),

              const Text('Crear una nueva cuenta', style: TextStyle(fontSize: 18),),
              const SizedBox( height: 50),
            ],
          ),
        )
      )
    );
  }
}


class _LoginForm extends StatelessWidget {
  // const _LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [

            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'brayan@gmail.com',
                labelText: 'Correo Electronico',
                prefixIcon: Icons.alternate_email_sharp
              ),

            ),

            const SizedBox(height: 30,),

            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: '****',
                labelText: 'Contraseña',
                prefixIcon: Icons.lock_clock_outlined
              ),

            ),

            const SizedBox(height: 30,),

            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.deepPurple,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: const Text(
                  'Ingresar',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              onPressed: (){

              },
            )

          ],
        ),
      ),
    );
  }
}