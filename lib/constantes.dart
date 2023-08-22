// définir les alias d'images
import 'dart:ui';
import 'package:mon_restaurant/models/event.dart';
import 'package:mon_restaurant/pages/home_page.dart';
import 'package:mon_restaurant/pages/next_page.dart';
import 'package:mon_restaurant/widgets/hover_button.dart';
import 'models/button_object.dart';

String birthdayImage = "images/bday.jpg";
String brownieImage = "images/brownie.jpg";
String cheesecakeImage = "images/cheesecake.jpg";
String chocoImage = "images/choco.jpg";
String cupcakeImage = "images/cupcake.jpg";
String donutsImage = "images/donuts.jpg";
String tiramisuImage = "images/tiramisu.jpg";
String weddingImage = "images/wedding.jpg";
String cupcakelogo = "images/cupcake.png";
String homeImage = "images/home.jpg";
String athenaImage = "images/athena.jpeg";
String pleaseImage = "images/please.jpg";
String flowerImage = "images/flowers.jpg";
String lecheImage = "images/leche.jpg";
String babineImage = "images/babine.jpg";
String dogImage = "images/dog.jpg";
String grumpyImage = "images/grumpy.png";
String mouthImage = "images/mouth.jpg";

// définir les alias de couleurs
Color pinkColor = const Color.fromRGBO(255, 182, 193, 1);

// gestion des liens du menu appbar
List<ButtonObject> menuButton = [
  ButtonObject(text: "Ma Cuisine", destination: HomePage()),
  ButtonObject(text: "Mes recettes", destination: NextPage()),
  ButtonObject(text: "Blog", destination: NextPage()),
];

List<HoverButton> menuButtonHover() =>
    menuButton.map((button) => HoverButton(buttonObject: button)).toList();

List<Event> events = [
  Event(name: "Mariage", path: weddingImage),
  Event(name: "Anniversaire", path: birthdayImage),
  Event(name: "Autre", path: cupcakeImage),
];

String aboutMe =
    "Ne vous fiez pas aux apparences, sous son air sauvage, le codeur est un fin gourmet. \n Avec ses doigts agiles il saura vous préparer des logiciels succulents.";


