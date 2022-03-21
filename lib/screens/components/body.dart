import 'package:flutter/material.dart';
import 'package:plantapp/screens/components/header_with_search.dart';
import 'package:plantapp/screens/components/recomend_plant.dart';
import 'package:plantapp/screens/components/title_with_more_btn.dart';
import 'package:plantapp/screens/details/detail_screen.dart';

import 'featured_image.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearch(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            buttonTitle: "More",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecomendPlant(
                  image: 'assets/images/image_1.png',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  price: 440,
                  subtitle: 'russia',
                  title: 'samantha',
                ),
                RecomendPlant(
                  image: 'assets/images/image_2.png',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  price: 440,
                  subtitle: 'russia',
                  title: 'samantha',
                ),
                RecomendPlant(
                  image: 'assets/images/image_3.png',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  price: 440,
                  subtitle: 'russia',
                  title: 'samantha',
                ),
              ],
            ),
          ),
          TitleWithMoreBtn(title: "Featured", buttonTitle: 'More'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedImage(
                  image: 'assets/images/bottom_img_1.png',
                  press: () {},
                ),
                FeaturedImage(
                  image: 'assets/images/bottom_img_2.png',
                  press: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
