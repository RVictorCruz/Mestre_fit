import 'package:flutter/material.dart';
import '../widgets/my_drawer.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Page'),
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text('Contact Page Content'),
      ),
    );
  }
}
