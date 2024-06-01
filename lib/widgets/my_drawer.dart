import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/treino_page.dart';
import '../pages/contact_pages.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Mestre Victor'),
            accountEmail: Text('https://github.com/RVictorCruz'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(
                  'https://github.com/RVictorCruz.png'),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.fitness_center),
            title: const Text('Treino'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const TreinoPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Historico'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ContactPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_page),
            title: const Text('Contact'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ContactPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
