import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class RegisterController extends GetxController {
  final loginController = TextEditingController();
  final emailController = TextEditingController();
  final senhaController = TextEditingController();
  final confirmarSenhaController = TextEditingController();

  String? validarLogin(String? valor) {
    if (valor == null || valor.trim().isEmpty) {
      return 'Preencha o login';
    }
    return null;
  }

  String? validarEmail(String? valor) {
    if (valor == null || valor.trim().isEmpty) {
      return 'Preencha o email';
    }
    if (!valor.contains('@')) {
      return 'Email inválido';
    }
    return null;
  }

  String? validarSenha(String? valor) {
    if (valor == null || valor.trim().isEmpty) {
      return 'Preencha a senha';
    }
    if (valor.length < 6) {
      return 'A senha deve ter pelo menos 6 caracteres';
    }
    return null;
  }

  String? validarConfirmarSenha(String? valor) {
    if (valor == null || valor.trim().isEmpty) {
      return 'Confirme a senha';
    }
    if (valor != senhaController.text) {
      return 'As senhas não coincidem';
    }
    return null;
  }
}
