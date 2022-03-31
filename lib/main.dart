import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navegacion Basica',
    home: FirstRoute(),
  ));
} //void main

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CFE"),
        backgroundColor: Colors.green.shade900,
        automaticallyImplyLeading: true,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ), //IconButton
        ], //actions
      ),
      drawer: const Drawer(),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pagina inicial'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            ); //Navigator.push
          }, //onPressend
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade900),
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CFE"),
        backgroundColor: Colors.green.shade900,

        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ), //IconButton
        ], //actions
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade900),
          ),
          child: const Text('Regresar'),
        ),
      ),
    );
  }
}
