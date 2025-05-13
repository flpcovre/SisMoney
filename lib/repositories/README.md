## Repositories

Aqui devem ficar todas as operações envolvendo o Banco de Dados, para cada Model deve existir pelo menos 1 Repository.

No Repository geralmente ficam as operações básicas que serão utilizadas por outra parte da aplicação

```
const User = UserRepository.getUserById(user_id);
```
Ou
```
UserRepository.deleteUserById(user_id);
```

### Estrutura sugerida:

```
lib/
└── repositories/
│ └─────── user_repository.dart
└── models/
  └─────── user.dart
```