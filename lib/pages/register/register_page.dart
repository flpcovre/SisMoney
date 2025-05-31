import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/components/app_icon.dart';
import 'package:sismoney/layouts/gradient_scaffold.dart';
import 'package:sismoney/pages/register/register_page_controller.dart';
import 'package:sismoney/utils/validators.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final controller = Get.put(RegisterPageController());

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: Color(0xFFBEBEBE)),
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      errorMaxLines: 2,
      errorStyle: const TextStyle(height: 1.2),
      filled: true,
      fillColor: const Color(0xFFECECEC),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {Get.back();},
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: FractionallySizedBox(
            widthFactor: 0.6,
            child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppIcon(
                    heigth: 100,
                    width: 100,
                  ),
                  const SizedBox(height: 32),

                  TextFormField(
                    controller: controller.nameController,
                    decoration: _inputDecoration('Preencha seu Nome'),
                    validator:
                        (_) => validateName(controller.nameController.text),
                  ),
                  const SizedBox(height: 16),

                  TextFormField(
                    controller: controller.emailController,
                    decoration: _inputDecoration('Preencha seu E-mail'),
                    validator:
                        (_) => validateEmail(controller.emailController.text),
                  ),
                  const SizedBox(height: 16),

                  TextFormField(
                    controller: controller.passwordController,
                    obscureText: true,
                    decoration: _inputDecoration('Preencha sua Senha'),
                    validator:
                        (_) => validatePassword(
                          controller.passwordController.text,
                        ),
                  ),
                  const SizedBox(height: 16),

                  TextFormField(
                    controller: controller.confirmPasswordController,
                    obscureText: true,
                    decoration: _inputDecoration('Confirme sua senha'),
                    validator:
                        (_) => validateConfirmPassword(
                          controller.passwordController.text,
                          controller.confirmPasswordController.text,
                        ),
                  ),
                  const SizedBox(height: 16),

                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5271FF),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: controller.signUpUserEmailPassword,
                      child: const Text(
                        'Registrar',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

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
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: controller.signUpGoogle,
                      icon: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xFFECECEC),
                        ),
                        padding: const EdgeInsets.all(2),
                        child: Image.asset(
                          'lib/assets/img/google-icon.png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      label: const Text(
                        'Entrar com Google',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  Obx(
                    () => Text(
                      controller.formError.string,
                      style: const TextStyle(height: 1.2, color: Colors.red),
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
