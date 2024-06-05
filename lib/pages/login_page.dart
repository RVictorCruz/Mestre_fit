import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passworlController = TextEditingController();

  void _login() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            border:
                Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 3),
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                        image: DecorationImage(
                            image: AssetImage('images/treino.png'),
                            fit: BoxFit.cover)),
                  )),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      const Text(
                        'Preencha os campos abaixo com os seus dados de acesso.',
                        style: TextStyle(color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                                labelText: "Email",
                                border: OutlineInputBorder(),
                                hintText: 'Digite o seu email')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                          controller: _passworlController,
                          decoration: const InputDecoration(
                              labelText: "Senha",
                              border: OutlineInputBorder(),
                              hintText: "Digite a sua senha"),
                          obscureText: true,
                        ),
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                          onPressed: _login, child: const Text("Login")),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage()));
                        },
                        child: const Text('Não tem uma conta? Cadastre-se'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
