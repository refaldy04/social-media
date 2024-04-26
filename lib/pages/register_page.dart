import 'package:flutter/material.dart';
import 'package:social_media/components/my_button.dart';
import 'package:social_media/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();

  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(
                height: 25,
              ),

              // app name
              const Text(
                "M I N I M A L",
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(
                height: 50,
              ),

              // username textfield
              MyTextField(
                  hintText: "Username",
                  obscureText: false,
                  controller: usernameController),

              const SizedBox(
                height: 10,
              ),

              // email textfield
              MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: emailController),

              const SizedBox(
                height: 10,
              ),

              // password textfield
              MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: passwordController),

              const SizedBox(
                height: 10,
              ),

              // confirm password textfield
              MyTextField(
                  hintText: "Confirm Password",
                  obscureText: true,
                  controller: confirmPwController),

              const SizedBox(
                height: 10,
              ),

              // forget password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              // register button
              MyButton(text: "Register", onTap: register),

              const SizedBox(
                height: 25,
              ),

              // don't have an account? register here
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("Already have an account?"),
                GestureDetector(
                  onTap: onTap,
                  child: const Text(
                    " Login Here",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
