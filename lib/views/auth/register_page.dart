import 'package:flutter/material.dart';
import 'package:todo_app/componenets/custom_textfield.dart';
import 'package:todo_app/componenets/custom_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;

  void  handleRegister(){
    setState(() {
      isLoading = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
      Navigator.pushReplacementNamed(context, '/home');
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextfield(
              hintText: 'Name',
              controller: nameController,
            ),
            const SizedBox(height: 16),
            CustomTextfield(
              hintText: 'Email',
              controller: emailController,
            ),
            const SizedBox(height: 16),
            CustomTextfield(
              hintText: 'Password',
              controller: passwordController,
              isPassword: true,
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: isLoading ? 'Registering...' : 'Register',
              onPressed: handleRegister,
            ),
          ],
        ),
      ),
    );
  }
}
