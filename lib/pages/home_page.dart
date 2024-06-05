import 'package:flutter/material.dart';
import '../widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          children: [
            Image.asset("images/treino.png", width: 900, height: 900,),
            const Text('Home Page Content'),
          ],
        ),
      ),
    );
  }
}
