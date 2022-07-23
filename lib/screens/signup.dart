import 'package:flutter/material.dart';
import 'package:flutter_training/widgets/custom_input_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameControl = TextEditingController();
  final _emailControl = TextEditingController();
  final _phoneControl = TextEditingController();
  final _passControl = TextEditingController();
  final _confirmPassControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipRect(
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/img/book.jpg'),
            ),
          ),
          const SizedBox(height: 20),
          CustomInputField(
              labelText: 'Name',
              txtController: _nameControl,
              iconValue: Icons.person,
              type: TextInputType.name,
              visible: false),
          CustomInputField(
              labelText: 'Email',
              txtController: _emailControl,
              iconValue: Icons.email,
              type: TextInputType.emailAddress,
              visible: false),
          CustomInputField(
              labelText: 'Phone',
              txtController: _phoneControl,
              iconValue: Icons.phone,
              type: TextInputType.phone,
              visible: false),
          CustomInputField(
              labelText: 'Password',
              txtController: _passControl,
              iconValue: Icons.lock,
              type: TextInputType.visiblePassword,
              visible: true),
          CustomInputField(
              labelText: 'Confirm Password',
              txtController: _confirmPassControl,
              iconValue: Icons.lock,
              type: TextInputType.visiblePassword,
              visible: true),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Proceed to Signup'),
            ),
          ),
          const SizedBox(height: 10),
          const Divider(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: FloatingActionButton.small(
                  onPressed: () {},
                  child: const Icon(Icons.facebook),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: FloatingActionButton.small(
                  onPressed: () {},
                  child: const Icon(Icons.g_mobiledata),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
