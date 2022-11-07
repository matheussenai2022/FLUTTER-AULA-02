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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.account_circle ,
              size: 180),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Usuário",
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration:const InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  suffixIcon: Icon(Icons.visibility),                  hintText: "Senha",


                ),
               
              ), ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0))),
                onPressed:(){},child: Padding(
                padding: const EdgeInsets.symmetric( vertical:25,
                horizontal:180,
                ),
                child: Text("LOGIN".toUpperCase()), 
               
            
             ),)
            
            ],
           
          ),
        ),
      ),
      
    
    );
  }
}
