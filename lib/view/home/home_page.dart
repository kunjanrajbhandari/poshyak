import 'package:flutter/material.dart';
import 'package:poshyak/kconstant.dart';
import 'package:poshyak/view/home/banner/bottom_banner/bottom_banner.dart';
import 'package:poshyak/view/home/banner/top_banner/banner.dart';
import 'package:poshyak/view/home/flash_sale/flash_sale.dart';
import 'package:poshyak/view/home/instagram/insta_post.dart';
import 'package:poshyak/view/home/kids/latest_kids.dart';
import 'package:poshyak/view/home/our_brand/brand.dart';
import 'package:poshyak/view/home/popular_category/man/category_man.dart';
import 'package:poshyak/view/home/popular_category/woman/category_woman.dart';
import 'package:poshyak/view/home/recommendation/recommendation.dart';
import 'package:poshyak/view/home/story/our_stories.dart';
import 'package:poshyak/view/home/trending/trending.dart';
import 'package:poshyak/widget/box_widget/box1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 8,
            ),

            ///Banner start
            const Center(
              child: BannerPage(),
            ),

            ///banner end

            //Recommendation For you page start
            const Padding(
              padding: EdgeInsets.only(top: 11.0),
              child: RecommendationForYou(),
            ),
            ////Recommendation For you page end

            ///Flash sale page start
            Padding(
              padding: topPadding * 2,
              child: FlashSalePage(),
            ),

            ///Flash sale page end

            ///Trending page start
            Padding(
              padding: topPadding * 2,
              child: const TrendingPage(),
            ),

            ///Trending page end
            ///OurBrand page start
            Padding(
              padding: topPadding * 2,
              child: OurBrandPage(),
            ),
            //popular Category for women start
            Padding(
              padding: topPadding * 2,
              child: PopularCategoryWoman(),
            ),
            //Our stories start
            Padding(
              padding: topPadding * 2,
              child: OurStories(),
            ),
            //popular Category for women start
            Padding(
              padding: topPadding * 2,
              child: PopularCategoryMan(),
            ),
            Padding(
              padding: topPadding * 2,
              child: LatestKids(),
            ),
            Padding(
              padding: topPadding * 2,
              child: BottomBanner(),
            ),

            Padding(
              padding: topPadding * 2,
              child: InstaPost(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Container(
          height: 33,
          width: 33,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: AssetImage('assets/icon/logo3.png'))),
        ),
      ),
    );
  }
}
