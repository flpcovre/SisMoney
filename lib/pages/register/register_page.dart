import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/layouts/gradient_scaffold.dart';
import 'package:sismoney/pages/register/register_getx_controller.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final controller = Get.put(RegisterController());
  final _formKey = GlobalKey<FormState>();

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: Color(0xFFBEBEBE)
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      errorMaxLines: 2,
      filled: true,
      fillColor: Color(0xFFECECEC),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Center(
        child: SingleChildScrollView(
          child: FractionallySizedBox(
            widthFactor: 0.5,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'lib/assets/img/robot.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(height: 32),

                  TextFormField(
                    controller: controller.loginController,
                    decoration: _inputDecoration('login'),
                    validator: controller.validarLogin,
                  ),
                  SizedBox(height: 16),

                  TextFormField(
                    controller: controller.emailController,
                    decoration: _inputDecoration('email'),
                    validator: controller.validarEmail,
                  ),
                  SizedBox(height: 16),

                  TextFormField(
                    controller: controller.senhaController,
                    obscureText: true,
                    decoration: _inputDecoration('senha'),
                    validator: controller.validarSenha,
                  ),
                  SizedBox(height: 16),

                  TextFormField(
                    controller: controller.confirmarSenhaController,
                    obscureText: true,
                    decoration: _inputDecoration('confirmar senha'),
                    validator: controller.validarConfirmarSenha,
                  ),
                  SizedBox(height: 16),

                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF5271FF),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: () {
                        //register logic
                        if (_formKey.currentState!.validate()) {

                        }
                      },
                      child: Text('Registrar'),
                    ),
                  ),
                  SizedBox(height: 16),

                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: () {
                        //register with Google logic
                        if (_formKey.currentState!.validate()) {

                        }
                      },
                      icon: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFECECEC),
                        ),
                        padding: EdgeInsets.all(2),
                        child: Image.asset(
                          'lib/assets/img/google-icon.png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      label: Text('Entrar com Google'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
