# $isMoney

## About

Aplicação Mobile de finanças desenvolvida em Flutter.

## Getting Started

Siga o passo a passo abaixo para realizar a instação

1. **Clonar o Repositório**
    Clone o Repositório em sua Máquina Local
    ```bash
    git clone https://github.com/flpcovre/sismoney.git
    cd sismoney
    ```

2. **Instalar as Dependências do Projeto** 
    ```bash
    flutter pub get
    ```

3. **Iniciar a Aplicação**
    ```bash
    flutter run
    ```


4. **Installing and Setting up Firebase**

    1. Install the Firebase CLI
        1. Install NPM [NPM Official Documentation](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm) 
        2. Install Firebase Tools
        ```bash
        npm install -g firebase-tools
        ```
        3. Log in to Firebase with your Google Account
        ```bash
        firebase login
        ```
    2. Install FlutterFire CLI
    ```bash
    dart pub global activate flutterfire_cli
    ```
    3. Set up FlutterFire
    ```bash
    flutterfire configure
    ```