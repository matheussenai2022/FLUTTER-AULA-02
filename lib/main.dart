import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula02',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "seja bem vindo",
                style: TextStyle(),
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                "faça login prara continuar",
                style: TextStyle(),
              ),
              const SizedBox(
                height: 80,
              ),
              const Icon(Icons.account_circle, size: 180),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Usuário",
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                  decoration: InputDecoration(
                prefixIcon: const Icon(Icons.key),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      obscuretext = !obscuretext;
                      print(obscuretext);
                    });
                  },
                ),
                hintText: "Senha",
              )),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "esqueceu sua senha senhor(A) ?",
                style: TextStyle(),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  setState(() {
                    obscuretext = !obscuretext;
                    print(obscuretext);
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 180,
                  ),
                  child: Text("LOGIN".toUpperCase()),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Ainda não tem conta?clique aqui para criar conta",
                style: TextStyle(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.audiotrack,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.beach_access,
                    color: Colors.blue,
                    size: 36.0,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
