import 'package:flutter/material.dart';
import '../widgets/my_drawer.dart';

class TreinoPage extends StatelessWidget {
  const TreinoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treino'),
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text('Settings Page Content'),
      ),
    );
  }
}
