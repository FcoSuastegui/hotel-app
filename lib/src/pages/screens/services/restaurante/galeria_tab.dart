import 'package:clubimperial/src/widgets/Cards/gallery_card.dart';
import 'package:flutter/material.dart';

class GaleriaTab extends StatelessWidget {
  final List images = [
    "assets/images/gallery/galeria-1.png",
    "assets/images/gallery/galeria-2.png",
    "assets/images/gallery/galeria-3.png",
    "assets/images/gallery/galeria-4.png",
    "assets/images/gallery/galeria-5.png",
    "assets/images/gallery/galeria-6.png",
    "assets/images/gallery/galeria-7.png",
    "assets/images/gallery/galeria-8.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.only(left: 10, right: 10),
            sliver: Container(
              child: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) =>
                      GalleryCard(images[index]),
                  childCount: images.length,
                ),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 190.0,
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 0.0,
                  childAspectRatio: 1.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
