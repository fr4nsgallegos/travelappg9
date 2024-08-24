import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:travelappg9/widgets/welcome_widget.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GFCarousel(
      height: MediaQuery.of(context).size.height,
      hasPagination: true,
      activeIndicator: Colors.blue,
      initialPage: 0,
      autoPlay: true,
      autoPlayAnimationDuration: Duration(seconds: 2),
      // reverse: false,

      enableInfiniteScroll: true,

      enlargeMainPage: true,
      items: [
        WelcomeWidget(
          title: "Viaja",
          color: Colors.orange,
          description:
              "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor",
          pathAsset: "avion",
        ),
        WelcomeWidget(
          title: "Agenda tus viajes",
          color: Colors.cyan,
          description:
              "Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira",
          pathAsset: "agregar",
        ),
        WelcomeWidget(
          title: "Imprimte tus tickets",
          description:
              "El trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. ",
          color: Colors.red,
          pathAsset: "print",
        ),
      ],
    ));
  }
}
