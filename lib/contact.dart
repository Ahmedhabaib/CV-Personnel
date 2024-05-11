import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:clipboard/clipboard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  // Changez StatelessWidget en StatefulWidget
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  int _selectedIndex =
      3; // Changez l'index sélectionné à 3 pour la page Contact
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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "N'hésitez pas à me contacter à tout moment",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign:
                      TextAlign.center, // Centrer le texte horizontalement
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black), // Contour noir
                borderRadius: BorderRadius.circular(35), // Coins arrondis
              ),
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  '+216 25 287 750',
                  style:
                      TextStyle(fontWeight: FontWeight.bold), // Texte en gras
                ),
                trailing: IconButton(
                  icon: Icon(Icons.copy),
                  onPressed: () {
                    FlutterClipboard.copy('+216 25 287 750').then((value) {
                      final snackBar = SnackBar(
                        content: Text('Copied to Clipboard'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black), // Contour noir
                borderRadius: BorderRadius.circular(35), // Coins arrondis
              ),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text(
                  'ahmedhabaib1@gmail.com',
                  style:
                      TextStyle(fontWeight: FontWeight.bold), // Texte en gras
                ),
                trailing: IconButton(
                  icon: Icon(Icons.copy),
                  onPressed: () {
                    FlutterClipboard.copy('ahmedhabaib1@gmail.com')
                        .then((value) {
                      final snackBar = SnackBar(
                        content: Text('Copied to Clipboard'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10), // Ajoutez un espace entre les éléments
            Text(
              'Social Media',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center, // Centrer le texte horizontalement
            ),
            SizedBox(height: 10), // Ajoutez un espace entre les éléments
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // Centrer les icônes horizontalement
              children: [
                InkWell(
                  onTap: () async {
                    const url = 'https://www.facebook.com/Ahmed.7abaib';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.facebookF,
                    size: 30.0,
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () async {
                    const url = 'https://twitter.com/habaib_ahmed';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.twitter,
                    size: 30.0,
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () async {
                    const url = 'https://github.com/Ahmedhabaib';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Icon(
                    FontAwesomeIcons.github,
                    size: 30.0,
                  ),
                ),
                // Ajoutez plus d'icônes pour d'autres réseaux sociaux
              ],
            ),
            SizedBox(height: 10), // Ajoutez un espace entre les éléments
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/Map');
              },
              child: Image.asset(
                'images/map.png',
                // Remplacez par le chemin de votre image d'aperçu de la carte
                fit: BoxFit.cover,
              ),
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
}
