// définir les alias d'images
import 'package:flutter/material.dart';
import 'package:mon_restaurant/models/event.dart';
import 'package:mon_restaurant/models/url_class.dart';
import 'package:mon_restaurant/pages/home_page.dart';
import 'package:mon_restaurant/pages/next_page.dart';
import 'package:mon_restaurant/widgets/hover_button.dart';
import 'package:mon_restaurant/widgets/url_button.dart';
import 'models/button_object.dart';
import 'models/carousel_image.dart';
import 'models/review.dart';

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
String babineImage = "images/babines.jpg";
String dogImage = "images/dog.jpg";
String grumpyImage = "images/grumpy.png";
String mouthImage = "images/mouth.jpg";

// définir les alias de couleurs
Color pinkColor = const Color.fromRGBO(255, 182, 193, 1);

// gestion des liens du menu appbar
List<ButtonObject> menuButton = [
  ButtonObject(text: "Ma Cuisine", destination: const HomePage()),
  ButtonObject(text: "Mes recettes", destination: const NextPage()),
  ButtonObject(text: "Blog", destination: const NextPage()),
];

List<HoverButton> menuButtonHover() =>
    menuButton.map((button) => HoverButton(buttonObject: button)).toList();

List<Event> events = [
  Event(name: "Mariage", path: weddingImage),
  Event(name: "Anniversaire", path: birthdayImage),
  Event(name: "Autres", path: cupcakeImage),
];

String aboutMe =
    "Ne vous fiez pas aux apparences, sous son air sauvage, le codeur est un fin gourmet."
    "\n Avec ses doigts agiles il saura vous préparer des logiciels succulents.";

List<ButtonObject> containerButton = [
  ButtonObject(
      text: "Téléphone",
      icon: const Icon(Icons.phone),
      destination: const NextPage()),
  ButtonObject(
      text: "Mail",
      icon: const Icon(Icons.mail),
      destination: const NextPage()),
  ButtonObject(
      text: "Visio",
      icon: const Icon(Icons.person),
      destination: const NextPage()),
];

List<HoverButton> getCardHoverButtons() =>
    containerButton.map((hbtn) => HoverButton(buttonObject: hbtn)).toList();

List<FloatingActionButton> getFloatingButton(BuildContext context) =>
    containerButton
        .map(
          (btn) => FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return btn.destination;
                  },
                ),
              );
            },
            backgroundColor: pinkColor,
            heroTag: btn.text,
            child: btn.icon,
          ),
        )
        .toList();

List<UrlClass> networks = [
  UrlClass(name: "Facebook", url: "https://www.facebook.com/"),
  UrlClass(name: "Instagram", url: "https://www.instagram.com/"),
  UrlClass(name: "Twitter", url: "https://www.twitter.com/"),
];

List<UrlButton> getSocialButtons() =>
    networks.map((net) => UrlButton(urlClass: net)).toList();

// gesiton des images du carousel
List<CarouselImage> images = [
  CarouselImage(name: "Brownie", path: brownieImage),
  CarouselImage(name: "Cheesecake", path: cheesecakeImage),
  CarouselImage(name: "Choco", path: chocoImage),
  CarouselImage(name: "Cupcake", path: cupcakeImage),
  CarouselImage(name: "Donuts", path: donutsImage),
  CarouselImage(name: "Tiramisu", path: tiramisuImage),
  CarouselImage(name: "Wedding Cake", path: weddingImage),
];

// nos reviews
Review archi = Review(
  name: "Archibald",
  image: athenaImage,
  comment: "J'ai adoré le gâteau de mon anniversaire, il était trop bon !",
);
Review moustache = Review(
  name: "Moustache",
  image: pleaseImage,
  comment: "J'ai adoré le gâteau de mon anniversaire, il était trop bon !",
);
Review flower = Review(
  name: "Flower",
  image: flowerImage,
  comment: "J'ai adoré le gâteau de mon anniversaire, il était trop bon !",
);
Review leche = Review(
  name: "Leche",
  image: lecheImage,
  comment: "J'ai adoré le gâteau de mon anniversaire, il était trop bon !",
);
Review gourmand = Review(
  name: "Gourmand",
  image: babineImage,
  comment: "J'ai adoré le gâteau de mon anniversaire, il était trop bon !",
);
Review dog = Review(
  name: "Medor",
  image: dogImage,
  comment: "J'ai adoré le gâteau de mon anniversaire, il était trop bon !",
);
