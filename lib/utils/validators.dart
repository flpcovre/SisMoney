String? validatename(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Preencha o name';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Preencha o email';
    }
    if (!value.contains('@')) {
      return 'Email inválido';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Preencha a senha';
    }
    if (value.length < 6) {
      return 'A senha deve ter pelo menos 6 caracteres';
    }
    return null;
  }

  String? validateConfirmPassword(String? password, String? confirmPassword) {
    if (password == null || password.trim().isEmpty) {
      return 'Confirme a senha';
    }
    if (password != confirmPassword) {
      return 'As senhas não coincidem';
    }
    return null;
  }