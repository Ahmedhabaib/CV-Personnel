import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:timeline_tile/timeline_tile.dart';

class FormationPage extends StatefulWidget {
  @override
  _FormationPageState createState() => _FormationPageState();
}

class _FormationPageState extends State<FormationPage> {
  int _selectedIndex = 1;
  static const List<String> _widgetOptions = <String>[
    '/Home',
    '/Formation',
    '/Exp',
    '/Contact',
  ];

  void _onItemTapped(int index) {
    setState(() {
      // Ajoutez cette ligne pour mettre à jour l'index sélectionné
      _selectedIndex = index;
    });
    Navigator.pushNamed(context, _widgetOptions[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 40.0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20), // Ajoutez un espace entre les blocs
            Text(
              'Formations acadamique:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            _buildTimelineTile(
              year: '2019',
              degree: 'Bac Science',
              institution: 'Lycée Monji Slim',
              isFirst: true,
            ),
            _buildTimelineTile(
              year: '2022',
              degree: 'Licence en Ingénierie des Systèmes Informatiques',
              institution: 'Faculté des Sciences de Sfax',
            ),
            _buildTimelineTile(
              year: '2025',
              degree: "Diplôme d'Ingénierie",
              institution: 'North American University',
              isLast: true,
            ),
            SizedBox(height: 20), // Ajoutez un espace entre les blocs
            Text(
              'Certifications:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            CarouselSlider(
              options: CarouselOptions(height: 200.0),
              items: [
                'dip-bac.png',
                'licence.png',
                'marketing.png',
                'scrum.png'
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        height: 200, // Définissez la hauteur souhaitée ici
                        width: 200, // Définissez la largeur souhaitée ici
                        child: Image.asset('images/$i', fit: BoxFit.contain),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.white,
        gap: 8,
        activeColor: Colors.blue,
        // Couleur des boutons lorsqu'ils sont actifs
        selectedIndex: _selectedIndex,
        // Ajoutez cette ligne pour indiquer l'index sélectionné
        onTabChange: _onItemTapped,
        // Ajoutez cette ligne pour gérer les événements de clic sur les boutons
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

  Widget _buildTimelineTile({
    required String year,
    required String degree,
    required String institution,
    bool isFirst = false,
    bool isLast = false,
  }) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.3,
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: const IndicatorStyle(
        width: 20,
        color: Colors.blue,
      ),
      beforeLineStyle: LineStyle(
        color: Colors.blue,
        thickness: 6,
      ),
      startChild: Text(
        year,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      endChild: _Child(
        degree: degree,
        institution: institution,
      ),
    );
  }
}

class _Child extends StatelessWidget {
  const _Child({
    Key? key,
    required this.degree,
    required this.institution,
  }) : super(key: key);

  final String degree;
  final String institution;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            degree,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            institution,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
