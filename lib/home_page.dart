import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:habaibahmed/contact.dart';
import 'package:habaibahmed/experience.dart';
import 'formation.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int _selectedIndex = 0;
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
      backgroundColor: Color(0xFFF2F2F2), // Replace the semicolon with a comma
      appBar: AppBar(
        title: Text('HABAIB Ahmed'),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(40.0),
                  // Ajoutez du padding pour déplacer le carré
                  child: Align(
                    alignment: Alignment.topLeft,
                    // Alignez le carré comme vous le souhaitez
                    child: Container(
                      width: 110,
                      // Augmentez la largeur pour agrandir le carré
                      height: 110,
                      // Augmentez la hauteur pour agrandir le carré
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          // Ajoutez cette ligne pour ajouter une ombre
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            // Couleur de l'ombre
                            spreadRadius: 2,
                            // Étendue de l'ombre
                            blurRadius: 7,
                            // Flou de l'ombre
                            offset: Offset(0, 9), // Position de l'ombre
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage('images/PROFIL.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                // Ajoutez un espace entre l'image et le texte
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'HABAIB Ahmed',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text('Ingénieur'),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on),
                        Text('Sfax, Tunisie'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20), // Ajoutez un espace entre les blocs
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              // Ajoutez du padding comme vous le souhaitez
              child: Text(
                'Je suis Ahmed HABAIB, un ingénieur en informatique passionné par le développement de logiciels. J\'ai une solide expérience dans le développement d\'applications mobiles et web en utilisant diverses technologies comme Flutter, Angular, Laravel, etc.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20), // Ajoutez un espace entre les blocs
            Text(
              'Compétences',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(
              padding: EdgeInsets.all(32.0),
              // Ajoutez du padding comme vous le souhaitez
              child: Align(
                alignment: Alignment.topLeft,
                child: Wrap(
                  spacing: 10, // Espace horizontal entre les carrés
                  runSpacing: 10, // Espace vertical entre les carrés
                  children: <Widget>[
                    // Remplacez par vos carrés contenant des logos et des labels
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // Ajoutez cette ligne pour colorer le conteneur en blanc
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          // Ajoutez cette ligne pour ajouter une ombre
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            // Couleur de l'ombre
                            spreadRadius: 2,
                            // Étendue de l'ombre
                            blurRadius: 7,
                            // Flou de l'ombre
                            offset: Offset(0, 9), // Position de l'ombre
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset('images/adobe-photoshop-2.svg',
                              width: 30, height: 30),
                          // Remplacez par le chemin de votre logo
                          SizedBox(height: 10),
                          Text(
                            'Photoshop',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // Ajoutez cette ligne pour colorer le conteneur en blanc
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          // Ajoutez cette ligne pour ajouter une ombre
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            // Couleur de l'ombre
                            spreadRadius: 2,
                            // Étendue de l'ombre
                            blurRadius: 7,
                            // Flou de l'ombre
                            offset: Offset(0, 9), // Position de l'ombre
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset(
                              'images/Adobe_Illustrator_CC_icon.svg',
                              width: 30,
                              height: 30),
                          // Remplacez par le chemin de votre logo
                          SizedBox(height: 10),
                          Text(
                            'Illustrator',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // Ajoutez cette ligne pour colorer le conteneur en blanc
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          // Ajoutez cette ligne pour ajouter une ombre
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            // Couleur de l'ombre
                            spreadRadius: 2,
                            // Étendue de l'ombre
                            blurRadius: 7,
                            // Flou de l'ombre
                            offset: Offset(0, 9), // Position de l'ombre
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset('images/angular-icon-1.svg',
                              width: 30, height: 30),
                          // Remplacez par le chemin de votre logo
                          SizedBox(height: 10),
                          Text(
                            'Angular',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // Ajoutez cette ligne pour colorer le conteneur en blanc
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          // Ajoutez cette ligne pour ajouter une ombre
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            // Couleur de l'ombre
                            spreadRadius: 2,
                            // Étendue de l'ombre
                            blurRadius: 7,
                            // Flou de l'ombre
                            offset: Offset(0, 9), // Position de l'ombre
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset('images/laravel-2.svg',
                              width: 30, height: 30),
                          // Remplacez par le chemin de votre logo
                          SizedBox(height: 10),
                          Text(
                            'Laravel',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // Ajoutez cette ligne pour colorer le conteneur en blanc
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          // Ajoutez cette ligne pour ajouter une ombre
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            // Couleur de l'ombre
                            spreadRadius: 2,
                            // Étendue de l'ombre
                            blurRadius: 7,
                            // Flou de l'ombre
                            offset: Offset(0, 9), // Position de l'ombre
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset('images/flutter-logo.svg',
                              width: 30, height: 30),
                          // Remplacez par le chemin de votre logo
                          SizedBox(height: 10),
                          Text(
                            'Flutter',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // Ajoutez cette ligne pour colorer le conteneur en blanc
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          // Ajoutez cette ligne pour ajouter une ombre
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            // Couleur de l'ombre
                            spreadRadius: 2,
                            // Étendue de l'ombre
                            blurRadius: 7,
                            // Flou de l'ombre
                            offset: Offset(0, 9), // Position de l'ombre
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset('images/java.svg',
                              width: 30, height: 30),
                          // Remplacez par le chemin de votre logo
                          SizedBox(height: 10),
                          Text(
                            'Java',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // Ajoutez cette ligne pour colorer le conteneur en blanc
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          // Ajoutez cette ligne pour ajouter une ombre
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            // Couleur de l'ombre
                            spreadRadius: 2,
                            // Étendue de l'ombre
                            blurRadius: 7,
                            // Flou de l'ombre
                            offset: Offset(0, 9), // Position de l'ombre
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset('images/html-1.svg',
                              width: 30, height: 30),
                          // Remplacez par le chemin de votre logo
                          SizedBox(height: 10),
                          Text(
                            'HTML',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // Ajoutez cette ligne pour colorer le conteneur en blanc
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          // Ajoutez cette ligne pour ajouter une ombre
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            // Couleur de l'ombre
                            spreadRadius: 2,
                            // Étendue de l'ombre
                            blurRadius: 7,
                            // Flou de l'ombre
                            offset: Offset(0, 9), // Position de l'ombre
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset('images/php-1.svg',
                              width: 30, height: 30),
                          // Remplacez par le chemin de votre logo
                          SizedBox(height: 10),
                          Text(
                            'PHP',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // Ajoutez cette ligne pour colorer le conteneur en blanc
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          // Ajoutez cette ligne pour ajouter une ombre
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            // Couleur de l'ombre
                            spreadRadius: 2,
                            // Étendue de l'ombre
                            blurRadius: 7,
                            // Flou de l'ombre
                            offset: Offset(0, 9), // Position de l'ombre
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset('images/docker-4.svg',
                              width: 30, height: 30),
                          // Remplacez par le chemin de votre logo
                          SizedBox(height: 10),
                          Text(
                            'Docker',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Wrap(
                          spacing: 10, // Espace horizontal entre les carrés
                          runSpacing: 10, // Espace vertical entre les carrés
                          children: <Widget>[
                            // Vos conteneurs de compétences vont ici
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    // Ajoutez un espace entre les blocs
                    Center(
                      child: Text(
                        'Langues',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(40.0),
                      // Ajoutez du padding comme vous le souhaitez
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Wrap(
                          spacing: 10, // Espace horizontal entre les carrés
                          runSpacing: 10, // Espace vertical entre les carrés
                          children: <Widget>[
                            // Vos conteneurs de langues vont ici
                            Container(
                              width: 70,
                              height: 70,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset('images/flag-of-saudi-arabia-vector-logo.svg', width: 30, height: 20), // Remplacez par le chemin de votre drapeau
                                  SizedBox(height: 10),
                                  Text(
                                    'Arabe',
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Niveau: Natif',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset('images/france.svg', width: 30, height: 20), // Remplacez par le chemin de votre drapeau
                                  SizedBox(height: 10),
                                  Text(
                                    'Français',
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Niveau: C1',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset('images/uk.svg', width: 30, height: 20), // Remplacez par le chemin de votre drapeau
                                  SizedBox(height: 10),
                                  Text(
                                    'Anglais',
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Niveau: B2',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Ajoutez un espace entre les blocs
                    Text(
                      'Mon CV en PDF',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 10), // Ajoutez un espace entre le titre et le PDF
                    Container(
                      height: 450, // Ajustez la hauteur selon vos besoins
                      child: SfPdfViewer.asset(
                        "assets/CV_Ahmed_HABAIB.pdf", // Remplacez par le chemin de votre fichier PDF
                      ),
                    ),  // Ajoutez autant de carrés que nécessaire
                  ],
                ),
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
