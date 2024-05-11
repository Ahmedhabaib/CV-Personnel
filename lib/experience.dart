import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ExperiencePage extends StatefulWidget {
  @override
  _ExperiencePageState createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  int _selectedIndex = 2;
  static const List<String> _widgetOptions = <String>[
    '/Home',
    '/Formation',
    '/Exp',
    '/Contact',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushNamed(context, _widgetOptions[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            // Ajustez la valeur selon vos besoins
            child: ExperienceCard(
              date: '2020 - Présent',
              position: 'Community Manager',
              company: 'Nom de l\'entreprise',
              logo: 'images/LOGO.png',
              description: '''Chef d'équipe de communication digital
Conception graphique
Montage videos
Digital marketing
Gestion des publicités payante
Gestion des réseaux sociaux''',
            ),
            // Ajoutez autant de cartes d'expérience que nécessaire
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            // Ajustez la valeur selon vos besoins
            child: ExperienceCard(
              date: '2024 - Présent',
              position: 'Community Manager',
              company: 'Nom de l\'entreprise',
              logo: 'images/allegra-logo.png',
              description: '''Conception graphique
Digital marketing
Gestion des publicités payante
Gestion des réseaux sociaux''',
            ),
            // Ajoutez autant de cartes d'expérience que nécessaire
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            // Ajustez la valeur selon vos besoins
            child: ExperienceCard(
              date: '07/2022 - 09/2022',
              position: 'Administrateur Sécurité Réseaux',
              company: 'Nom de l\'entreprise',
              logo: 'images/logo-inel.png',
              description: '''Création des solutions de sécurité réseaux
Administration réseaux
Maintenance des serveurs''',
            ),
            // Ajoutez autant de cartes d'expérience que nécessaire
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            // Ajustez la valeur selon vos besoins
            child: ExperienceCard(
              date: '02/2022 - 06/2022',
              position: 'Stagiaire',
              company: 'Nom de l\'entreprise',
              logo: 'images/djagora.png',
              description: '''Réalisation d’un système de sécurité pour l'infrastructure réseaux en
utilisant l’outils Pfsense pour le pare-feu avec aussi un serveur proxy
sous linux en utilisant l’outils webmin.
Réalisation d’un serveur vpn sous la machine serveur pour autoriser
l'accès à distance.''',
            ),
            // Ajoutez autant de cartes d'expérience que nécessaire
          ),
        ],
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.white,
        gap: 8,
        activeColor: Colors.blue,
        selectedIndex: _selectedIndex,
        onTabChange: _onItemTapped,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.book,
            text: 'Formation',
          ),
          GButton(
            icon: Icons.business,
            text: 'Expérience',
          ),
          GButton(
            icon: Icons.contact_mail,
            text: 'Contact',
          ),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String date;
  final String position;
  final String company;
  final String logo;
  final String description;

  ExperienceCard({
    required this.date,
    required this.position,
    required this.company,
    required this.logo,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              date,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              position,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset(logo,
                      width: 50, height: 50), // Utilisez la variable logo ici
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
